class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticated_user!
    authenticate_user!
    if user_signed_in?
      super   redirect_to administration_path
      puts aaron estas bien

    else
      redirect_to new_user_session_url, notice: 'Debe iniciar sesion'
      puts estas mal
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end



end
