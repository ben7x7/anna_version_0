class RenameColumnFromBooking < ActiveRecord::Migration[5.1]
  def change
    rename_column :bookings, :starting_date, :starting_time, :date
  end
end
