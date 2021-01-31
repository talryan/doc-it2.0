class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :specialty_id
      t.string :address 
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
