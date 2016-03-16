class PaymentMailer < ApplicationMailer

	def newPayment(payment)
		@payment=Payment.find(payment)
		@project=Project.find(@payment.project_id)
		mail(to: @payment.user.email, subject: "supportyourdream.com - Platba pre projekt" + @project.name)
	end
end
