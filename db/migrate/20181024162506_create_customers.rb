class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :description

      t.timestamps null: false
    end
  end
end
