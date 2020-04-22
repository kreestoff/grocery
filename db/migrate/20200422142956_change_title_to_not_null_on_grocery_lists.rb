class ChangeTitleToNotNullOnGroceryLists < ActiveRecord::Migration[6.0]
  change_column_null :grocery_lists, :title, false
end
