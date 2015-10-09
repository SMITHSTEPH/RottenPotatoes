class SessionsController < ApplicationController
    layout false  #overriding application layout
=begin
    def user_params
        params.require(:user).permit(:user_id, :email)
=end    
    
    def new
    end
    
    def destroy
    end
    
    def create
       
    end

end