class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
    t.belongs_to :doctor, foreign_key: true, index: true
    t.belongs_to :patient, foreign_key: true, index: true 
    t.datetime :date
    t.timestamps
    end
  end
end
