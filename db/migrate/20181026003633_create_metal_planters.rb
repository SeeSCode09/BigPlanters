class CreateMetalPlanters < ActiveRecord::Migration[5.2]
  def change
    create_table :metal_planters do |t|
      t.string :product_name, null: false
      t.string :price, null: false
      t.string :description, null: false
      t.string :model, null: false
      t.string :order, null: false
      t.string :image, null: false
      t.string :dimensions
      t.string :weight
      t.string :colors
      t.string :finishes
      t.string :size_options

      t.timestamps null: false
    end
  end
end
