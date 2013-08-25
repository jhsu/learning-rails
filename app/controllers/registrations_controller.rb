class RegistrationsController < Devise::RegistrationsController
  before_filter :permit_name, if: :devise_controller?

  def permit_name
  	devise_parameter_sanitizer.for(:sign_up) {|u|
  	  u.permit(:email, :name, :password, :password_confirmation)
  	}
  end
end
