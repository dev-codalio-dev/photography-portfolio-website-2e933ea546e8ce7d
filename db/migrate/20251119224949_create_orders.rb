class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.float :total_amount, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
