class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :supplier_id
      t.string :account_number

      t.timestamps null: false
    end
  end
end
