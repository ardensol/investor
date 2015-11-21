class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :name
      t.text :description
      t.decimal :needed_amount
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
