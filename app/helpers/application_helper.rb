module ApplicationHelper
	  

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  
  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end

  def category_locale_exists(locale)
    if locale == "en"
      @c = Category.where("name_en = '' ").count
    elsif locale == "cs"
      @c = Category.where("name_cs ='' ").count
    elsif locale == "hu"
      @c = Category.where("name_hu ='' ").count
    elsif locale == "pl"
      @c = Category.where("name_pl ='' ").count
    end
  end

end
