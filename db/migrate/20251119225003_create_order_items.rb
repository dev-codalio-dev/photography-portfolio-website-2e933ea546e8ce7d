class CreateOrderItems < ActiveRecord::Migration[7.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null: false
      t.float :price, null: false
      t.references :order, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
