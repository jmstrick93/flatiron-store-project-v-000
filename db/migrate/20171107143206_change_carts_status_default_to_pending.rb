class ChangeCartsStatusDefaultToPending < ActiveRecord::Migration
  def up
    change_column_default :carts, :status, "pending"
  end

  def down
    change_column_default :carts, :status, nil
  end
end
