class Users::RegistrationsController < Devise::RegistrationsController
 #before_filter :configure_sign_up_params, only: [:create]
 #before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  #def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  #   resource.build_bio
  #   resource.bio.contactemail = resource.email
  #   resource.save
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # GET /resource/userproject
   def userprojects
    @user=current_user.id
    @project = Project.user_id(@user)
   end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :name
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end


  private

  def after_inactive_sign_up_path_for(resource)
    sign_up_success_path
  end

 before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
     #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :street, :city, :zip, :altemail, :phone, :fbprofile, :twitterprofile, :gplusprofile, :picture, :personalweb, :aboutme, :email, :password, :password_confirmation, :remember_me) }
     #devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
     #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :street, :city, :zip, :altemail, :phone, :fbprofile, :twitterprofile, :gplusprofile, :picture, :personalweb, :aboutme, :email, :password, :password_confirmation, :current_password) }
     devise_parameter_sanitizer.for(:sign_up).push(:name, :street, :city, :zip, :altemail, :phone, :fbprofile, :twitterprofile, :gplusprofile, :picture, :personalweb, :aboutme)
     devise_parameter_sanitizer.for(:account_update).push(:name, :street, :city, :zip, :country, :altemail, :phone, :fbprofile, :twitterprofile, :gplusprofile, :picture, :personalweb, :aboutme)
  end


end
