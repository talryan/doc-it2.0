class DoctorsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        if params[:q]
             @doctors = Doctor.search_by_state_and_specialty(params[:q],params[:specialty]).alphabetical_order
        else 
            @doctors = Doctor.all.alphabetical_order
        end
            @specialties = Doctor.list_of_specialties.collect{|s|s.specialty}
    end 

    def show 
        @doctor = Doctor.find(params[:id])
    end

    def new 
        @doctor = Doctor.new
    end

    def create
    @doctor = Doctor.new(doctors_params)
    if @doctor.save 
        redirect_to doctor_path(@doctor)
    else
        render :new
    end
end


    private

    def doctors_params
        params.require(:doctor).permit(:name, :specialty_id, :address,  :zipcode, :city, :state, appointment_attributes: [:time, :date,:user_id, :doctor_id])
    end
end
