require 'rails_helper'

RSpec.describe Auction, type: :model do
	#subject { described_class.new(title: "test" , description: "test description" , start_date: DateTime.now, end_date: DateTime.now + 1.week) }
  let(:auction) { FactoryBot.create(:auction)}
  
  it "is valid with valid attribute" do
  	expect(auction).to be_valid
  end
  it "is not valid without a title" do
  	auction.title = nil
  	expect(auction).not_to be_valid
  end
  it "is not valid without a description" do
  	auction.description = nil
  	expect(auction).not_to be_valid
  end

  it "is not valid without a start date" do
  	auction.start_date = nil
  	expect(auction).not_to be_valid
  end

  it "is not valid without a end date" do
  	auction.end_date = nil
  	expect(auction).not_to be_valid
  end

 describe "Associations" do
  it "has one buyer" do
    assc = described_class.reflect_on_association(:buyer)
    expect(assc.macro).to eq :has_one
  end

  it "has one buyer" do
    assc = described_class.reflect_on_association(:buyer)
    expect(assc.macro).to eq :has_one
  end
 end

end
