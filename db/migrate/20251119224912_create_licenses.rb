class CreateLicenses < ActiveRecord::Migration[7.2]
  def change
    create_table :licenses do |t|
      t.string :name, null: false, limit: 255
      t.text :description, limit: 1000
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
    add_index :licenses, [ :name, :organization_id ], unique: true
  end
end
