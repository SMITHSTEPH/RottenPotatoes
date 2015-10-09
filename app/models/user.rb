class User < ActiveRecord::Base
    
    def self.CreateUser! user
        user[:session_token]=SecureRandom.base64
        puts "in CreateUser!"
        puts "create User"+ user.to_s
        User.create user
    end
    
    def self.Test 
        puts "This is a user test"
    end
end