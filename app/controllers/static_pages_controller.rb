class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def aboutus
  end

  def project_terms
  end

  def sign_up_success
  end

  def faq
  end

  def success
    @projects=Project.select("projects.*").joins(:payments).group("projects.id").where('enabled = true and enddate < ?', Time.now)
    .having("sum(payments.amount) > projects.amount")
    @projects.sort_by(&:collected_money_percentage).reverse
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

  def listup
      @projects=Project.where(user_id: params[:id], enabled: true)
  end
  
  def search
    @projects=Project.basic_search(params[:q]).where('enabled=true')
  end

  
end
