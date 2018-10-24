class CreateProductGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :product_groups do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :image, null: false

      t.timestamps null:false
    end
  end
end
