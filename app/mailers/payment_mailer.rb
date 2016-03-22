class PaymentMailer < ApplicationMailer

	def newPayment(payment)
		@payment=Payment.find(payment)
		@project=Project.find(@payment.project_id)
		mail(to: @payment.user.email, subject: "supportyourdream.com - Platba pre projekt" + @project.name)
	end

	def newPaymentAdmin(payment)
		@payment=Payment.find(payment)
		@project=Project.find(@payment.project.id)
		@admin=User.where('admin = true').first
		mail(to: @admin.email, subject: "Nová platba " + @payment.created_at.strftime("%Y").to_s + @payment.id.to_s + " čaká v systéme na potvrdenie")
	end
end
