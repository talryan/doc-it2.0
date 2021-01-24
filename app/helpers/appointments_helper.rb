module AppointmentsHelper

    def authorized_appointment
        @appointment = Appointment.find(params[:id])
        @appointment.user_id == current_user.id
    end
end
