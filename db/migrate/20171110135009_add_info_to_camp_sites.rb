class AddInfoToCampSites < ActiveRecord::Migration[5.0]
  def change
    add_column :camp_sites, :zip_code, :string
    add_column :camp_sites, :city, :string
    add_column :camp_sites, :country, :string
  end
end
