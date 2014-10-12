class Convention < ActiveRecord::Base
	serialize :plots,Array
	has_many :story_posts
end
