class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def aboutus
  end

  def project_terms
  end

  def adminpage
		@projects=Project.all
  end

end
