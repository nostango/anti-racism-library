class RemoveNewFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :new, :string
  end
end
