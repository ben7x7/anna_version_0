class AddColumnToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :date, :string
    add_column :bookings, :starting_time, :datetime
    add_column :bookings, :ending_time, :datetime
  end
end
