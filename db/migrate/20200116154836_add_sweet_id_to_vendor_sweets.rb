class AddSweetIdToVendorSweets < ActiveRecord::Migration[5.1]
  def change
    add_column :vendor_sweets, :sweet_id, :integer
  end
end
