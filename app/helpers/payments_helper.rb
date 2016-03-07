module PaymentsHelper
	def findProject(id)
		@project=Project.find(id)
	end

	def countRewardsBought(id)
		Payment.where('reward_id = ? and confirmed = true', id).count
	end

	def getRewardAmount(id)
		if id.present?
		@reward=Reward.find(id)
		@reward.amount
		else
		return 1
	end
	end
end
