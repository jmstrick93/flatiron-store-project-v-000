class RemovePrecisionAndScaleFromItemsPrice < ActiveRecord::Migration

  def up
    change_column :items, :price, :decimal
  end

  def down
    change_column :items, :price, :decimal, precision: 5, scale: 2
  end

end
