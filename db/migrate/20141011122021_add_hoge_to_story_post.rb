class AddHogeToStoryPost < ActiveRecord::Migration
  def change
    add_column :story_posts, :plots, :text
  end
end
