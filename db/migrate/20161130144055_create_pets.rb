class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :owner_id
      t.date :born_on
      t.string :species
      t.string :breed
      t.string :image_url

      t.timestamps
    end
  end
end
