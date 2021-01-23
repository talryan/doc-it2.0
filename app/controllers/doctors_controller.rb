class DoctorsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index  #all
        if params[:q]
             @doctors = Doctor.search_by_specialty(params[:q])
        else 
            @doctors = Doctor.all.alphabetical_order
        end
    end 

    def show #one 
        @doctor = Doctor.find(params[:id])
    end


    private

    def doctors_params
        params.require(:doctor).permit(:name, :specialty, :address, :zipcode, :city, :state, appointment_attributes: [:time, :date,:user_id, :doctor_id])
    end
end
