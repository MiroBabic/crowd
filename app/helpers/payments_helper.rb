module PaymentsHelper
	def findProject(id)
		@project=Project.find(id)
	end
end
