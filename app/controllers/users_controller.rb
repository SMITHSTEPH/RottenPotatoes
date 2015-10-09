class UsersController < ApplicationController

    def user_params
        params.require(:user).permit(:signup_id, :signup_email)
    end

    def new
    # default: render 'new' template
    end

    def create
        user_id=user_params[:signup_id]
        puts "In Create"
        if User.find_by_user_id(user_id).blank?
            puts "In Create user if"
            @user=User.CreateUser!({:signup_id=>user_params[:signup_id], :signup_email=>user_params[:signup_email]})
            puts "@user"
            puts "@user: " + @user.to_s
            flash[:notice] = "Welcome #{@user.signup_id} Your account has been created"
            redirect_to login_path
        else
            flash[:notice] = "Sorry. This user-id is taken. Try again"
            redirect_to new_user_path
        end
        #add to the User database
    end
end