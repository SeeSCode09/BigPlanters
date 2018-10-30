class CreateServiceAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :service_areas do |t|
      t.string :state, null: false
      t.string :description

      t.timestamps null: false
    end
  end
end
