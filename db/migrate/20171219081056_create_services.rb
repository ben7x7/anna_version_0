class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :activity
      t.integer :hourly_fee
      t.text :description
      t.references :agency, foreign_key: true

      t.timestamps
    end
  end
end
