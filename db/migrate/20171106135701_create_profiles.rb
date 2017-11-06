class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :birth_date
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :avatar

      t.timestamps
    end
  end
end
