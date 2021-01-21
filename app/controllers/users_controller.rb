class UsersController < ApplicationController

    def index
        # byebug
        @users = User.where('is_client=?', false)
            # {|u| u.is_client == false}
            
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
        # if user.is_client == true 
        #     render json: user include: {} 
        # else
        #     render json: user
        # end
    end


    def create
        # byebug
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
        # byebug
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
        # byebug
        @user = User.find(params[:id]) 
        @user.update(signup_params)
        render json: @user
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
        params.require(:user).permit(:full_name, :is_client, :bio, :img_url, :username, :id)
    end

end
