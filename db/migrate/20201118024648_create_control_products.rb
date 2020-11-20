class CreateControlProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :control_products do |t|
      t.string :ica_registration
      t.string :name
      t.integer :application_frequency
      t.integer :price_product

      t.timestamps
    end
  end
end
