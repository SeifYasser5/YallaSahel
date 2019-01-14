class RentalsController < ApplicationController
	def index
    if (params.has_key?(:destination) && params.has_key?(:rooms))
  		if (params[:destination].length>0 && params[:rooms].length>0)
          @rentals = Rental.where("destination like ?", "%#{params[:destination]}%").or(Rental.where(rooms: params[:rooms]))
      elsif (params[:destination].length>0)
          @rentals = Rental.where("destination like ?", "%#{params[:destination]}%") 
      elsif (params[:rooms].length>0)  
        @rentals = Rental.where(rooms: params[:rooms])
      else
        @rentals = Rental.all
  		end
    else
      @rentals = Rental.all;
    end
  end
	def create
    puts params[:rooms]
	 redirect_to action: :index, destination: params[:destination], rooms: params[:rooms]
  end
	def show
		@rental = Rental.find(params[:id])
 	end
end
