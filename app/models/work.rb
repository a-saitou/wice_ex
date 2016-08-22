class Work < ActiveRecord::Base
	belongs_to :staff
	belongs_to :agreement
	belongs_to :calendar
end
