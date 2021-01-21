class AppointmentsController < ApplicationController

    def index
        if params[:doctor_id] && @doctor = Doctor.find(params[:doctor_id])
            @appointment = @doctor.appointment
        else 
            @appointments = Appointment.all
        end
    end

    def new
        if params[:doctor_id] && @doctor = Doctor.find(params[:doctor_id])
            @appointment = Appointment.new(doctor_id: params[:doctor_id])
        else
        @appointment = Appointment.new
        end
    end

    def create 

    #     @appointment = Appointment.new(appointment_params)
    #     @appointment = current_user.appointments.create(appointment_params)
    #     if @appointment.save
    #     redirect_to appointment_path(@appointment)
    #     else 
    #         render :new 
    #     end
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id
    if @appointment.save
        redirect_to appointments_path(current_user.id)
    else
        render :new
    end

    end

    def edit 
    end


    private 

    def appointment_params
        params.require(:appointment).permit(:time, :date, :user_id, doctor_attributes:[:name, :specialty, :address, :zipcode, :city, :state])
    end
end
