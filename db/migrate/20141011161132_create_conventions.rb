class CreateConventions < ActiveRecord::Migration
  def change
    create_table :conventions do |t|
      t.string :title
      t.text :plots
      t.date :write_limit
      t.date :like_limit

      t.timestamps
    end
  end
end
