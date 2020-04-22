class AddUserIdColumnToGroceryLists < ActiveRecord::Migration[6.0]
  add_column :grocery_lists, :user_id, :integer, null: false
  add_foreign_key :grocery_lists, :users, name: 'fk_grocery_lists_to_users'
end
