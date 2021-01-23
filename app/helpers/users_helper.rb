module UsersHelper

#     if user's upcoming appointments = 0, return "You have no upcoming appointments"
   def upcoming?
        if Appointment.upcoming.empty?
         "You have 0 upcoming appointments."
        else 
            "You have #{Appointment.upcoming.count} upcoming appointment(s)."
        end
    end
# else 
#     if user's upcoming appointments > 0, return "You have #{number of upcoming appointments} and list upcoming appointments"
end
