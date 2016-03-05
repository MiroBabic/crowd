module ProjectsHelper
	def is_success(id)
		 @project = Project.find(id)
		 @amount = @project.amount
		 @collected = Payment.where('project_id = ? and confirmed = true', @project.id).sum(:amount)
		if @amount < @collected
			 return true
		else 
			return false
		end
	end

	def collected(id)
		@project = Project.find(id)
		@collected = Payment.where('project_id = ? and confirmed = true', @project.id).sum(:amount)
	end

	def reward_count(id)
		@project = Project.find(id)
		@rwc = Payment.where('project_id = ? and confirmed = true and reward_id is not null', @project.id).count
	end

	def payment_count(id)
		@project = Project.find(id)
		@payc = Payment.where('project_id = ? and confirmed = true', @project.id).count
	end

	def payments_detail(id)
		@payment = Payment.where('project_id = ? and confirmed = true', @project.id)
	end
end
