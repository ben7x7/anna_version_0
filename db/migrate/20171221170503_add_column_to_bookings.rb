class AddColumnToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :date, :date
    add_column :bookings, :starting_time, :date
    add_column :bookings, :ending_time, :date
  end
end
