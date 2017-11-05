class ChangeItemsNameToTitle < ActiveRecord::Migration
  def change
    rename_column :items, :name, :title
  end
end
