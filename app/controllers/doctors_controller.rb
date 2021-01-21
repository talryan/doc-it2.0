class DoctorsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index  #all
        if params[:q]
             @doctors = Doctor.search_by_state(params[:q])
        else 
            @doctors = Doctor.all
        end
    end 

    def show #one 
        @doctor = Doctor.find(params[:id])
    end
end
