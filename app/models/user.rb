class User < ActiveRecord::Base
    has_many :rides
    has_many :attractions, through: :rides
    has_secure_password

    def self.mood
        if self.nausea_rating > self.happiness_rating
            return "sad"
        else self.happiness_rating > self.nausea_rating
            return "happy"
        end        
    end
end
