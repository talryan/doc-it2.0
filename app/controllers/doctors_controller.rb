class DoctorsController < ApplicationController
    
   

    def index  #all
        @doctors = Doctor.all

        # if params[:q]
        #      @doctors = Doctor.search_by_location(params[:q])
        # else 
        #     @doctors = Doctor.all
    end 

    def show #one 
        @doctor = Doctor.find(params[:id])
    end
end
