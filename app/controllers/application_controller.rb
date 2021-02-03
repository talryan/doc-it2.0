class ApplicationController < ActionController::Base
    include ApplicationHelper
    
    rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

    def route_not_found
      render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
    end
  

  def redirect_if_not_logged_in
    redirect_to '/' if !logged_in?
  end
 

    def record_not_found
        render 'layouts/record_not_found'
    end
end
