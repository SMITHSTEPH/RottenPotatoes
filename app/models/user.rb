class User < ActiveRecord::Base
    
    def self.CreateUser! user
        user[:session_token]=SecureRandom.base64
        self.Create! user
    end
    
    def self.Test 
        puts "This is a user test"
    end
end