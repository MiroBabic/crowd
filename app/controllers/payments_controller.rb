class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  def invoice
    @payment = Payment.find(params[:id])
  end

  def userpayments
    @user=current_user
    @payments=Payment.where("user_id=?",@user)
  end

  def confirmpayment
    @payment=Payment.find(params[:id])
    @payment.confirmed = true

    respond_to do |format|
    if @payment.save
       
        format.html { redirect_to payments_path, notice: 'Platba bola potvrdená.' }
        format.json { render :show, status: :created, location: @p }
      else
        format.html { render :new }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end

  end

  def selectreward
    @project = Project.find(params[:id])
  end

  def show_reward_desc
    value = params[:payment][:reward_id]
    if value.blank?
      @reward=nil
      respond_to do |format|
        format.js {render :reward_desc}      
      end
    else
    @reward=Reward.find(value)
    respond_to do |format|
        format.js {render :reward_desc}      
      end
    end
  end
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    @project = Project.find(payment_params[:project_id])
    if params[:reward_id].present?
    @reward = Reward.find(params[:reward_id])
    end


    respond_to do |format|
      if @payment.save

        PaymentMailer.newPayment(@payment.id).deliver_now
        format.html { redirect_to invoice_url(id: @payment.id), notice: 'Payment was successfully created.' }
        #format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:user_id, :project_id, :reward_id, :amount, :confirmed)
    end
end
