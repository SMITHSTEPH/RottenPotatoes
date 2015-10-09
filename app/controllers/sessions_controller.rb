class SessionsController < ApplicationController
    #layout "new" #overriding application layout
    def new
        render :layout => "layout_for_new_only"
    end
    
    def destroy
    end
    
    def create
    end

end