class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :profile, foreign_key: true
      t.references :host, foreign_key: true
      t.references :camp_site, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
