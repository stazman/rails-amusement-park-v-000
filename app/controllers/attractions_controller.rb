class AttractionsController < ApplicationController

    def index
        @attractions = Attraction.all
    end
        
    def new
        @attraction = Attraction.new
    end

    def create
        @attraction = Attraction.find_or_create_by(attraction_params)
        @attraction.save
        redirect_to attraction_path
    end

    private

    def attraction_params
        params.require(:attractions).permit(:name, :tickets, :min_height, :nausea_rating, :happiness_rating)
    end

end