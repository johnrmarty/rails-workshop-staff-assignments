class LocationsController < ApplicationController

  def index
    @locations = Location.order(:name)
  end

  def new 
  	@location = Location.new
  end 

 def create
      @location = Location.new(location_params)
      if @location.save
          redirect_to root_path, notice: 'Location was successfully created.' 
      else
       render :new 
      end
  end

private
    def location_params
      params.require(:location).permit(:name)
    end
end 


end







