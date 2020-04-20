class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title, limit: 20

      t.timestamps
    end
  end
end
