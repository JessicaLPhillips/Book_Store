class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :user_id, null: :false
      t.integer :book_id, null: :false
      t.decimal :price, null: :false

      t.timestamps
    end
  end
end
