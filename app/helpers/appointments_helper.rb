module AppointmentsHelper

    def authorized_appointment
        @appointment = Appointment.find(params[:id])
        @appointment.user_id == current_user.id
    end

    def appointment_history?
        if current_user.appointments == nil 
        "You have no appointment history."
        else 
            "You have #{current_user.appointments.count} past appointment(s). "
        end
    end
end

