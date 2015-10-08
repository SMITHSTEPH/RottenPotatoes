class User < ActiveRecord::Base
    
    def CreateUser! user
        user[:session_token]=SecureRandom.base64
        Create! user
    end
end