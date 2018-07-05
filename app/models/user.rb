class User < ActiveRecord::Base
    has_secure_password
  
    has_many :rides
    has_many :attractions, :through => :rides
  
    def mood
      if self.happiness && self.nausea
        mood = self.happiness - self.nausea
        mood > 0 ? "happy" : "sad"
      end
    end
  
    def num_of_rides
      self.attractions.count
    end
  end


# class User < ActiveRecord::Base
#     has_many :rides
#     has_many :attractions, through: :rides
#     has_secure_password

#     def self.mood
#         if self.nausea_rating > self.happiness_rating
#             return "sad"
#         else self.happiness_rating > self.nausea_rating
#             return "happy"
#         end        
#     end
# end
