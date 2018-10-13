class AddAttachmentVideoToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :products, :video
  end
end
