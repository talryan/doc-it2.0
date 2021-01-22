class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        if params[:doctor_id] && @doctor = Doctor.find(params[:doctor_id])
            @appointment = @doctor.appointment
        else 
            @appointments = Appointment.all
        end
    end

    def new
        @appointment = Appointment.new
        @doctor = Doctor.find_by(params[:doctor_id])
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        @appointment.doctor = Doctor.find_by(params[:doctor_id])
        @appointment.user_id = current_user.id
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end

    end

    def edit 
        @appointment = Appointment.find(params[:id])
    end

    def update
            @appointment = Appointment.find(params[:id])
            @appointment.update(appointment_params)
            if @appointment.valid?
                redirect_to appointment_path
            else
                render :edit
            end
    end

    def show #one 
        @appointment = Appointment.find(params[:id])
    end

    def destroy
    end

    private 

    def appointment_params
        params.require(:appointment).permit(:time, :date, :user_id, doctor_attributes:[:name, :specialty, :address, :zipcode, :city, :state])
    end
end
