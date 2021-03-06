class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :assembly, index: true
      t.belongs_to :part, index: true
    end
  end
end
