module StaticPagesHelper
	def get4new
		@projects=Project.where('enabled = true and enddate > ?', Time.now )
		@projects.order(confirmdate: :desc).limit(4)
	end

	def get4best
		@projects = Project.where('enddate > ?', Time.now)
		@projects.order(enddate: :desc).limit(4)
	end

	def projectCollectedMoney(id)
		@project= Project.find(id)
		@collected = Payment.where('project_id = ?', @project.id)
		@collected.sum(:amount)
	end

	def projectCollectedMoneyPerc(id)
		@project= Project.find(id)
		@collected = Payment.where('project_id = ?', @project.id)
		if @collected.nil?
			@col=0
		else
		@col = @collected.sum(:amount)
		end
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

end
