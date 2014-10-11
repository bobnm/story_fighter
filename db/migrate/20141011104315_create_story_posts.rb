class CreateStoryPosts < ActiveRecord::Migration
  def change
    create_table :story_posts do |t|
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
