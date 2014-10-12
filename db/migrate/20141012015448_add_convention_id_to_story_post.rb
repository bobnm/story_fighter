class AddConventionIdToStoryPost < ActiveRecord::Migration
  def change
    add_column :story_posts, :convention_id, :integer
  end
end
