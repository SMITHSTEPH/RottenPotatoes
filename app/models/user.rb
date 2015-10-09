class User < ActiveRecord::Base
    
    def self.CreateUser! user
        user[:session_token]=SecureRandom.base64
        User.create user
    end
end