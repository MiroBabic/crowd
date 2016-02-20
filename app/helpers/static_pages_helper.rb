module StaticPagesHelper
	def get4new
		@projects=Project.where('enabled = true')
		@projects.order(confirmdate: :desc).limit(4)
	end

	def get4best
		@projects = Project.where('enddate > ?', Time.now)
		@projects.order(enddate: :desc).limit(4)
	end

	

end
