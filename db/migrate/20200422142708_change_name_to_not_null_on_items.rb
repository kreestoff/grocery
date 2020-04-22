class ChangeNameToNotNullOnItems < ActiveRecord::Migration[6.0]
  change_column_null :items, :name, false
end
