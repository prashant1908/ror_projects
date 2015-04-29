class AddColumnInProduct < ActiveRecord::Migration
  def change
  	add_column :products,:user_id ,:integer
  	add_column :products, :category_id ,:integer
  end
end
