class UsersController < ApplicationController

    def index
        @users = User.where('is_client=?', false)
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            payload = {user_id: @user.id}
            token = encode_token(payload)
            render json: {user: @user, token: token, success: "Welcome!"}
        else
            render json: @user.errors
        end
    end

    def login
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            payload = {user_id: @user.id}
            token = encode_token(payload)
            render json: {user: @user, token: token, success: "Welcome Back!"}
        else
            render json: {error: "Incorrect Email or Password"}
        end
    end
    
    def update
        @user = User.find(params[:id]) 
        @user.update(signup_params)
        render json: {user: @user}
    end
    
    def delete
        
    end
    
    def profile
        render json: {user: current_user}, status: :accepted
    end

    private

    def user_params
       params.permit(:email, :password)
    end

    def signup_params
        params.require(:user).permit(:full_name, :is_client, :bio, :img_url, :username, :id, :lat, :lng)
    end

end
