class Buyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :ideas

	#validates :first_name, :presence => true
	#validates :last_name, :presence => true

	def full_name
    	return first_name + " " + last_name
	end

	
end
