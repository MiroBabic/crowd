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

  def faq
  end

  def listall
    @param=params[:id]

    if @param == 'getAllNew'
      @projects=Project.where('enabled = true and enddate > ?', Time.now )
      @projects.order(confirmdate: :desc)
    elsif @param == 'getAllBest'
      @projects=Project.where('enabled = true and enddate > ?', Time.now)
       .sort_by(&:collected_money_percentage).reverse
    elsif @param == 'getAllPaylast'
      @projects = Project.joins(:payments).where('enabled = true and enddate > ? and payments.confirmed = true', Time.now)
      .order('payments.created_at DESC')
    end
  end
  
end
