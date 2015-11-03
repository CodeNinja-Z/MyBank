class Children::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:first_name, :last_name, :birthdate, :email, :password)
  end
end