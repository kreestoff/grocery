class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, limit: 20
      t.string :note, limit: 200

      t.timestamps
    end
  end
end
