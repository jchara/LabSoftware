class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :document_type
      t.string :document_number
      t.string :name
      t.string :lastname

      t.timestamps
    end
  end
end
