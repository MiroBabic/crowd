module StaticPagesHelper

	def get4new
		@projects=Project.where('enabled = true and enddate > ?', Time.now )
		@projects.order(confirmdate: :desc).limit(4)
	end

	
	def get4best
	@projects =	Project.joins(:payments).where('enabled = true and enddate > ?', Time.now)
	.group('projects.id')
	.order('(SUM(payments.amount)) / projects.amount')
	.limit(4)
	end

	def get4best2
	@projects=Project.where('enabled = true and enddate > ?', Time.now)
       .sort_by(&:collected_money_percentage).reverse.first(4)
   
	end

	
	def get4paylast
		@projects =	Project.joins(:payments).where('enabled = true and enddate > ? and payments.confirmed = true', Time.now)
		.order('payments.created_at DESC')
	.limit(4)
	end

	def projectCollectedMoney(id)
		@project= Project.find(id)
		@collected = Payment.where('project_id = ? and confirmed = true', @project.id)
		@collected.sum(:amount)
	end

	def projectCollectedMoneyPerc(id)
		@project= Project.find(id)
		@collected = Payment.where('project_id = ? and confirmed = true', @project.id)
		
		@col = @collected.sum(:amount)
		
		@perc = ((@col.to_f / @project.amount) * 100).round(0)
	end

	def daysToEnd(id)
		@project=Project.find(id)
		@secleft = @project.enddate-Time.now
		@daysleft = (@secleft / 86400).to_i
	end

	def TotalToEnd(id)
		@project=Project.find(id)
		@secleft = @project.enddate-Time.now
		@daysleft = (@secleft / 86400).to_i
		@hoursleft= ((@secleft / (60*60)) - (@daysleft*24)).to_i
		@minleft = ((@secleft / 60) % 60).to_i
		@total=format("%02d dní %02d hodín a %02d minút", @daysleft, @hoursleft, @minleft)
	end

	def countSupporters(id)
		Payment.where('project_id = ? and confirmed = true', id).count
	end

	def countUserProjects(id)
		Project.where('user_id = ?', id).count
	end
end
