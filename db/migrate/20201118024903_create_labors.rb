class CreateLabors < ActiveRecord::Migration[6.0]
  def change
    create_table :labors do |t|
      t.references :Control_product, null: false, foreign_key: true
      t.datetime :date
      t.string :description
      t.string :labor_type

      t.timestamps
    end
  end
end
