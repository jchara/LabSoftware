class CreateTowns < ActiveRecord::Migration[6.0]
  def change
    create_table :towns do |t|
      t.references :department, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
