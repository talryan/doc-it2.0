module UsersHelper
   def upcoming?
        if @user.appointments.upcoming.empty?
         "You have 0 upcoming appointments."
        else 
            "You have #{@user.appointments.upcoming.count} upcoming appointment(s)."
        end
    end
end
 