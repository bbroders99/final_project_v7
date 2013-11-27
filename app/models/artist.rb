class Artist < ActiveRecord::Base

	has_many :ideas
	has_many :portfolio_images
	has_many :bids

end
