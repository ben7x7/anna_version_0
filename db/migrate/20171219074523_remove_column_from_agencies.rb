class RemoveColumnFromAgencies < ActiveRecord::Migration[5.1]
  def change
    remove_column :agencies, :logo, :binary
  end
end
