class AddImageToSupplier < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :image, :string
  end
end
