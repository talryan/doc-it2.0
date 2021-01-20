class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        user = User.find_by(email:params['user']['email'])
        if user && user.authenticate(params['user']['password'])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else 
            flash[:message] = "Email or Password does not match our records. Please try again."
            render :new
        end
    end    

    def destroy
        session.delete :user_id
        flash[:message] = "You have Successfully Logged Out."
        redirect_to :root
    end

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            redirect_to '/login'
        end
    end
end