class CreateGroceryLists < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_lists do |t|
      t.string :title, limit: 20

      t.timestamps
    end
  end
end
