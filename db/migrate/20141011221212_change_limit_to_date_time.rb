class ChangeLimitToDateTime < ActiveRecord::Migration
  def up
	  change_column :conventions, :write_limit, :datetime
	  change_column :conventions, :like_limit, :datetime
  end
  def down
	  change_column :conventions, :write_limit, :date
	  change_column :conventions, :like_limit, :date
  end
end
