module ApplicationHelper
	def self.can_like(convention)
		convention == nil ||
		convention.like_limit == nil ||
		convention.like_limit >= DateTime.now
	end
	def self.can_write(convention)
		convention == nil ||
		convention.write_limit == nil ||
		convention.write_limit >= DateTime.now
	end
end
