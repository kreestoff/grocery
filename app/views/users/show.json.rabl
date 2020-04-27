object @user
attributes :id, :email

child :grocery_lists do
  attributes :id, :created_at, :updated_at, :title
  node(:item_count) {|list| list.items.count}
end
