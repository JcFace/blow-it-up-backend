class UsersController < ApplicationController

    def index
        blowers = User.all.each{ |u| u.is_client == false}
        render json: blowers
    end

    def show
        user = User.find(params[:id])
        render json: user
    end


    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors
        end
    end

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: "Incorrect Email or Password"}
        end
    end


    def update
    #    user = User.find(user_params) 
    #    user.update
    end

    def delete

    end

    private

    def user_params
       params.require(:user).permit(:email, :password) 
    end

end
