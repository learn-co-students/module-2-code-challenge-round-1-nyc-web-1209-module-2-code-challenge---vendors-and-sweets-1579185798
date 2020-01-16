class AddVendorIdToVendorSweets < ActiveRecord::Migration[5.1]
  def change
    add_column :vendor_sweets, :vendor_id, :integer
  end
end
