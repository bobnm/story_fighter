class Information < ActiveRecord::Base
	def self.currents
		now = DateTime.now
		all.select{|x| x.begin_date <= now && now <= x.end_date}
	end
end
