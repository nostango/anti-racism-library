class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :new
      t.string :author
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end