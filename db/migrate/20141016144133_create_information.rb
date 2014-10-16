class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title
      t.text :content
      t.datetime :begin_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
