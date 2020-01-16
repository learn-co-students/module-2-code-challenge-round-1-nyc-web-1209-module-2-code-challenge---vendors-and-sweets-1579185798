class VenderSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :sweet_id
      t.integer :vendor
      t.integer :price
    end
  end
end
