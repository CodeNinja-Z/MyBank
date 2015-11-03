class Parents::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:first_name, :last_name, :email, :password)
  end
end