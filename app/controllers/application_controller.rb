class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale
 
	def set_locale

	  I18n.locale = params[:locale] || I18n.default_locale

	end
  
	def default_url_options(options={})
  	logger.debug "default_url_options is passed options: #{options.inspect}\n"
  	{ locale: I18n.locale }
	end

   rescue_from ActiveRecord::RecordNotFound, :with => :render_404
   rescue_from I18n::InvalidLocale, with: :locale_not_found
  # Render 404 page when record not found
    def render_404      
       render :file => "public/404.html", :status => 404
    end
  
    def locale_not_found
      redirect_to root_path
    end

    

end
