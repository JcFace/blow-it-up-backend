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
        user = User.create(user_params)
            if user
                render json: user 
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
       params.require(:user).permit(:username, :is_client) 
    end

end
