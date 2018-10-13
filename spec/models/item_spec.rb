require 'rails_helper'

RSpec.describe Item, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let(:item) {FactoryBot.create(:item)}

	it "it valid with valid attributes" do
		expect(item).to be_valid
	end 

	describe "association" do
	  it "product association" do 
	  	expect(item).to belong_to(:product)
	  end
	end

	describe "scope" do
		it "item qty more than 5" do
	 		product  = FactoryBot.create(:product)
	 		item1 = FactoryBot.create(:item, item_name: "test", qty: 6, product_id: product.id)
	 		expect(Item.more_5_qty.first).to eq(item1)
	 	end
	end

end
