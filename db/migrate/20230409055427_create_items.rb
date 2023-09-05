class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :image
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :introduction, null: false
      t.integer :price_without_tax, null: false
      t.boolean :is_active, default: true, null: false
      t.timestamps
    end
  end
end
