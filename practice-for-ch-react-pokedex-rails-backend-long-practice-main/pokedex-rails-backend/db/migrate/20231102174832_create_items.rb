class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :pokemon, foreign_key: true
      t.string :name, null: false
      t.string :price, null: false
      t.string :happiness, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
