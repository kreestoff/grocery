class AddArchivedColumnToItems < ActiveRecord::Migration[6.0]
  add_column :items, :archived, :boolean, default: :false
end
