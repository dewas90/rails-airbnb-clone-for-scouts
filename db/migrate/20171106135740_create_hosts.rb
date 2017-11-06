class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.references :profile, foreign_key: true
      t.string :bank_account

      t.timestamps
    end
  end
end
