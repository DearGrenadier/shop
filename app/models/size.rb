class Size < ActiveRecord::Base
	has_many :prices
	has_many :mattresses, through: :prices
end
