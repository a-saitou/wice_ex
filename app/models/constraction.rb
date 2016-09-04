class Constraction < ActiveRecord::Base
	  has_many :works 
	belongs_to :orderer
end
