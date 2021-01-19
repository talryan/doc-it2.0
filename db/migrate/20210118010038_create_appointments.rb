class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date 
      t.time :time
      t.integer :doctor_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
