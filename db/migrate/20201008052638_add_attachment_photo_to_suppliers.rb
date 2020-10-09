class AddAttachmentPhotoToSuppliers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :suppliers do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :suppliers, :photo
  end
end
