class AddColumnToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :picto, :string
  end
end
