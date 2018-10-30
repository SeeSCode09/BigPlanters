class CreatePlasticPlanters < ActiveRecord::Migration[5.2]
  def change
    create_table :plastic_planters do |t|
      t.string :product_name, null: false
      t.string :price, null: false
      t.string :description, null: false
      t.string :model, null: false
      t.integer :order, null: false
      t.string :image, null: false
      t.string :dimensions
      t.string :weight
      t.string :colors
      t.string :finishes
      t.string :size_options
      t.string :additional_info

      t.timestamps null: false
    end
  end
end
