class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_type, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :mobile, :string
    add_column :users, :st_number, :integer
    add_column :users, :street, :string
    add_column :users, :zip, :integer
    add_column :users, :city, :string
    add_column :users, :building, :string
    add_column :users, :code, :string
    add_column :users, :floor, :integer
    add_column :users, :lift, :boolean
    add_column :users, :door, :string
    add_column :users, :comment, :text
    add_column :users, :capacity, :string
  end
end
