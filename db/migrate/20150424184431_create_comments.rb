class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :product, index: true

      t.timestamps null: false
    end
    #add_index :comments, :product_id
  end
end
