class UsersController < ApplicationController

    def user_params
        params.require(:user).permit(:user_id, :email,)
    end
    def new
    # default: render 'new' template
    end

    def create
        #user_id=params[:user_id]
        redirect_to movie_path
=begin
        if User.find(user_id).blank?
            flash[:notice] = "Sorry. This user-id is taken. Try again"
            redirect_to new
        else
            #in database
            @user=CreateUser!({:user_id=>params[:user_id], :email=>params[:email]})
            flash[:notice] = "Welcome #{@user.title} Your account has been created"
            redirect_to movies_path

        end
=end
        #add to the User database
    end
end