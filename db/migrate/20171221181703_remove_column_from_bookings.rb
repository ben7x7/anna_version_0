class RemoveColumnFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :starting_date, :date
    remove_column :bookings, :ending_date, :date
  end
end
