class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :activity
      t.string :contract
      t.date :hired_date
      t.string :rib
      t.integer :hourly_rate
      t.references :agency, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
