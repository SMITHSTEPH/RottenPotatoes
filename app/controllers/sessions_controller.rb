class SessionsController < ApplicationController
    layout false  #overriding application layout

    def user_params
        params.require(:user).permit(:login_id, :login_email)
    end
    
    
    def new
    end
    
    def destroy
        reset_session
        redirect_to movies_path
    end
    
    def create
        user_id=user_params[:login_id]
        puts "user_id is" + user_id
        if User.find_by_user_id(user_id).blank?
            flash[:notice]="incorrect username"
            redirect_to login_path
        else
            session[:session_token]=@user.session_token
            redirect_to movies_path
        end
    end

end