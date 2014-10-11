class StoryPost < ActiveRecord::Base
  serialize :content,Array
  serialize :plots,Array
end
