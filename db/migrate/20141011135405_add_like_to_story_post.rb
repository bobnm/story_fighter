class AddLikeToStoryPost < ActiveRecord::Migration
  def change
    add_column :story_posts, :like, :integer
  end
end
