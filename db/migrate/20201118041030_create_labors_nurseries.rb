class CreateLaborsNurseries < ActiveRecord::Migration[6.0]
  def change
    create_table :labors_nurseries, :id => false do |t|
      t.references :labor
      t.references :nursery
    end
    #add_index :labors_nurseries, :labor_id
    #add_index :labors_nurseries, :nursery_id
  end
end
