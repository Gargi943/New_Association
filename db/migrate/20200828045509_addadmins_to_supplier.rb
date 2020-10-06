class AddadminsToSupplier < ActiveRecord::Migration[5.2]
    def change
    	add_column :suppliers, :admin, :boolean
  end
end
