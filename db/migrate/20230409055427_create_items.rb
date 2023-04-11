class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :id
      t.string :image
      t.string :name, null: false
      t.string :introduction, null: false
      t.integer :genre_id, null: false
      t.integer :price, null: false
      t.boolean :is_active, default: true, null: false
      t.timestamps
    end
  end
end
