require 'rails_helper'

RSpec.describe Product, type: :model do
	#subject {described_class.new(name: "test", price: 1234)}
	let(:product) {FactoryBot.create(:product)}

	it "is valid with valid attributes" do
		expect(product).to be_valid
	end
	it "is not valid without name" do
		product.name = nil
		expect(product).not_to be_valid
	end
	it "is not valid without price" do
		product.price = nil
		expect(product).not_to be_valid
	end

	describe "association" do
	  it " product association" do 
	  	expect(product).to have_many :items
	  end
	end

end
