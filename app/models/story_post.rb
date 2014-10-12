class StoryPost < ActiveRecord::Base
  serialize :content,Array
  serialize :plots,Array
  belongs_to :convention
end
