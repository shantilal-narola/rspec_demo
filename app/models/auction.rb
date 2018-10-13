class Auction < ActiveRecord::Base
	validates :title , :description, :start_date, :end_date, presence: :true
	has_one :buyer, class_name: "User"
    has_one :seller, class_name: "User"
end
