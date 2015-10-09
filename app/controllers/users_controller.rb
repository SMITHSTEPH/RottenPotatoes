class UsersController < ApplicationController

    def user_params
        params.require(:user).permit(:user_id, :email)
    end

    def new
    # default: render 'new' template
    end

    def create
        user_id=user_params[:user_id]

        if User.find_by_user_id(user_id).blank?
            puts "IN CREATE USER IF"
            flash[:notice] = "Sorry. This user-id is taken. Try again"
            redirect_to new
        else
            puts "IN CREATE USER ELSE"
            #in database
            @user=CreateUser!(params[:user])
            flash[:notice] = "Welcome #{@user.title} Your account has been created"
            redirect_to movies_path

        end
        #add to the User database
    end
end