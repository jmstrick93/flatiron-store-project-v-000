class CreateOrders < ActiveRecord::Migration
  def change
    create_table :cart do |t|
      t.integer :user_id
      t.timestamps :null => false
    end
  end
end
