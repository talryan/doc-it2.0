class DoctorsController < ApplicationController
    
   

    def index  #all
        @doctors = Doctor.all

        if params[:q]
             @doctors =
    end 

    def show 
        @doctor = Doctor.find(params[:id])
    end
end
