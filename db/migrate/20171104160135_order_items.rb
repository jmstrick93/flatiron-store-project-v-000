class OrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :quantity, default: 1
      t.timestamps :null => false
    end
  end
end
