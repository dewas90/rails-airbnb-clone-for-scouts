class CreateCampSites < ActiveRecord::Migration[5.0]
  def change
    create_table :camp_sites do |t|
      t.references :host, foreign_key: true
      t.string :title
      t.string :description
      t.integer :capacity
      t.string :category
      t.string :address
      t.string :picture
      t.integer :price

      t.timestamps
    end
  end
end
