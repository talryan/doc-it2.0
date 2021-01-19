class AppointmentsController < ApplicationController

    def new
        @appointmnent = Appointment.new
    end

    def create 
        appointment = Appointment.create(appointment_params)
    end


    private 

    def appointment_params
        params.require(:appointment).permit(:time, :)
    end
end
