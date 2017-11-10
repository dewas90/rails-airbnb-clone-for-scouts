class AddCoordinatesToCampSite < ActiveRecord::Migration[5.0]
  def change
    add_column :camp_sites, :latitude, :float
    add_column :camp_sites, :longitude, :float
  end
end
