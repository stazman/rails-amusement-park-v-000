class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def take_ride

        # if self.user.tickets < self.attraction.tickets
        #     flash[:notice] = ""
        # elsif self.user.height < self.attraction.min_height
        #     flash[:notice] = ""
        # elsif self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height
        #     flash[:notice] = ""
        # if user has tickets
        #     if user rides a ride, the number of rides of the ride taken by the user adds 1
        #        ??? the nausea rating of the user changes to the nausea level of the ride?
        #        ???  the happiness rating the user changes to the happiness level of the ride?
        #         nausea rating does not show up on the demo app
    
    

#  Ride has a method 'take_ride' that accounts for the user not having enough tickets
#  Ride has a method 'take_ride' that accounts for the user not being tall enough
#  Ride has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets
#  Ride has a method 'take_ride' that updates ticket number
#  Ride has a method 'take_ride' that updates the user's nausea
#  Ride has a method 'take_ride' that updates the user's happiness
    end
end
