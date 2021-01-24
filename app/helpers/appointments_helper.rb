module AppointmentsHelper

    def authorized_appointment
        @appointment = Appointment.find(params[:id])
        @appointment.user_id == current_user.id
    end

    def appointment_history?
        if @appointment == nil 
        "You have no appointment history."
        else 
            "You have #{@appointment.count} past appointment(s). "
        end
    end
end

