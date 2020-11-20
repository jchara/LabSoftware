class CreateNurseries < ActiveRecord::Migration[6.0]
  def change
    create_table :nurseries do |t|
      t.references :producer, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.string :nursery_code
      t.string :name

      t.timestamps
    end
  end
end
