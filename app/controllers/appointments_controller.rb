class AppointmentsController < ApplicationController

    def new
        @appointmnent = Appointment.new
    end

    def create 
    #     appointment = Appointment.create(appointment_params)
    # end


    # private 

    # def appointment_params
    #     params.require(:appointment).permit(:time, :date, :doctor.first_name, :doctor.last_name, :user.first_name, :user.last_name )
    # end
end
