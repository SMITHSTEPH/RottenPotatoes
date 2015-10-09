class SessionsController < ApplicationController
    layout false  #overriding application layout

    def user_params
        params.require(:user).permit(:login_id, :login_email)
    end
    
    
    def new
    end
    
    def destroy
        puts "in destroy"
        reset_session
        redirect_to movies_path
    end
    
    def create
        user_id=user_params[:login_id]
        puts "user_id is" + user_id
        user=User.find_by_user_id(user_id)
        if user.blank?
            flash[:notice]="incorrect username"
            redirect_to login_path
        else
            puts 'current user id' + user.session_token
            session[:session_token]=user.session_token
            #flash[:notice]="Logged in as #{user.user_id}"
            redirect_to movies_path
        end
    end

end