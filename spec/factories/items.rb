FactoryBot.define do
  factory :item do
    item_name "MyString"
    qty 1
    association :product
  end
end
