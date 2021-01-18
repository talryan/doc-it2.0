class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
