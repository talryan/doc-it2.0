class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
    end

    def create 
        @appointment = current_user.appointments.create(appointment_params)
        if @appointment.save
        redirect_to appointment_path(@appointment)
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
