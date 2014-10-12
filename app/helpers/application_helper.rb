module ApplicationHelper
	def self.can_like(convention)
		convention == nil ||
		convention.like_limit == nil ||
		convention.like_limit >= DateTime.now
	end
end
