class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.string :title, null: false, limit: 255
      t.text :description, limit: 2000
      t.float :price, null: false
      t.references :user, null: false, foreign_key: true
      t.references :license, null: false, foreign_key: true

      t.timestamps
    end
  end
end
