class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :brand
      t.integer :created_date
      t.binary :logo
      t.string :owner
      t.string :director
      t.string :address
      t.string :phone
      t.string :contact_person
      t.string :mobile
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
