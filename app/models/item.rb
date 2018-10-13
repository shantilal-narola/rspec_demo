class Item < ActiveRecord::Base

  belongs_to :product
  validates :item_name, :product_id, :qty, presence: :true
  scope :more_5_qty, -> { where("qty  > ?", 5) }

end
