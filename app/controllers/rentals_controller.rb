class RentalsController < ApplicationController
	def index
    if (params.has_key?(:destination) && params.has_key?(:rooms))
  		if (params[:destination].length>0 && params[:rooms].length>0)
          @rentals = Rental.where("lower(destination) like ?", "%#{params[:destination].downcase}%").and(Rental.where(rooms: params[:rooms]))
      elsif (params[:destination].length>0)
          @rentals = Rental.where("lower(destination) like ?", "%#{params[:destination].downcase}%") 
      elsif (params[:rooms].length>0)  
        @rentals = Rental.where(rooms: params[:rooms])
      else
        @rentals = Rental.all;
  		end
    else
      @rentals = Rental.all;
    end
  end
	def create
  	redirect_to action: :index, destination: params[:destination], rooms: params[:rooms]
  end
	def show
		@rental = Rental.find(params[:id])
 	end
end
