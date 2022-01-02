class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.decimal :amount
      t.integer :budget_id
      t.integer :category_id

      t.timestamps
    end
  end
end
