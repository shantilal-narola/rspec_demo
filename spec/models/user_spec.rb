require 'rails_helper'

RSpec.describe User, type: :model do
	#subject { described_class.new(email: "test12@gmail.com" , password: "1234") }
	let(:user) { FactoryBot.create(:user) }

 	it "is valid with valid attributes" do
 		expect(user).to be_valid
 	end

 	it "is not valid without email" do 
 		user.email = nil
 		expect(user).not_to be_valid
 	end
 	it "is not valid without password" do
		user.password = nil
 		expect(user).not_to be_valid
 	end
end
