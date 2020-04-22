class AddGroceryListIdColumnToItems < ActiveRecord::Migration[6.0]
  add_column :items, :grocery_list_id, :integer, null: false
  add_foreign_key :items, :grocery_lists, name: 'fk_items_to_grocery_lists'
end
