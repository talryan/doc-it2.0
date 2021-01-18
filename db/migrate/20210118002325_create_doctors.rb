class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.integer :appointment_id
      t.string :hospital_id

      t.timestamps
    end
  end
end
