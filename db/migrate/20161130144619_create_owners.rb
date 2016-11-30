class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.string :full_name
      t.string :email
      t.string :blood_type
      t.string :ssn
      t.string :phone_number
      t.integer :balance_in_cents

      t.timestamps
    end
  end
end
