class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :starting_date
      t.date :ending_date
      t.references :service, foreign_key: true
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
