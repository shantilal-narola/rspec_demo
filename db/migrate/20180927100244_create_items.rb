class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :qty
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
