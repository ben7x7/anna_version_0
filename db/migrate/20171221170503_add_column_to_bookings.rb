class AddColumnToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :date, :text
    add_column :bookings, :starting_time, :text
    add_column :bookings, :ending_time, :text
  end
end
