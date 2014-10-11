class StoryPost < ActiveRecord::Base
  serialize :content,Array
end
