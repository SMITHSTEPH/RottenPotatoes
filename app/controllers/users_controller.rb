class UsersController < ApplicationController

    def user_params
        params.require(:user).permit(:user_id, :email)
    end

    def new
    # default: render 'new' template
    end

    def create
        #user_id=params[:user_id]
        puts "User"
        puts params.to_s;
        puts "email: " + params[:email].to_s
        puts "IN USER CREATE"
        redirect_to movies_path
        
=begin
        if User.find(user_id).blank?
            puts "IN CREATE USER IF"
            flash[:notice] = "Sorry. This user-id is taken. Try again"
            redirect_to new
        else
            puts "IN CREATE USER ELSE"
            #in database
            @user=CreateUser!({:user_id=>params[:user_id], :email=>params[:email]})
            flash[:notice] = "Welcome #{@user.title} Your account has been created"
            redirect_to movies_path

        end
=end

        #add to the User database
    end
end