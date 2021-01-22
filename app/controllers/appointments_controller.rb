class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        if params[:doctor_id] && @doctor = Doctor.find(params[:doctor_id])
            @appointments = @doctor.appointments
        else 
            @appointments = Appointment.all
        end
    end



    def new
        if params[:doctor_id] && @doctor = Doctor.find(params[:doctor_id])
            @appointment = Appointment.new(doctor_id: params[:doctor_id])
     
        else
            @appointment = Appointment.new
            # @appointment.build_doctor
        end
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        if params[:doctor_id]
        @doctor = Doctor.find(params[:doctor_id])
        end
   
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
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to appointment_path
    end

    private 

    def appointment_params
        params.require(:appointment).permit(:time, :date,:user_id, :doctor_id, doctor_attributes:[:name, :specialty, :address, :zipcode, :city, :state])
    end
end
