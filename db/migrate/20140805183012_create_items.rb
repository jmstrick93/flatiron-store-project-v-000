class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.integer :category_id
      t.timestamps :null => false
    end
  end
end
