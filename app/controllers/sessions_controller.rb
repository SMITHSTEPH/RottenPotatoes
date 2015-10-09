class SessionsController < ApplicationController
    layout false  #overriding application layout
    
    def new
    end
    
    def destroy
    end
    
    def create
        redirect_to movies_path
    end

end