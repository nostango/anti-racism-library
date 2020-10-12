class AddUrlAndCatToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :url, :string
    add_column :items, :category, :string
  end
end
