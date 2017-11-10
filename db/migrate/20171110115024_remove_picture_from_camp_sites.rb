class RemovePictureFromCampSites < ActiveRecord::Migration[5.0]
  def change
    remove_column :camp_sites, :picture, :string
  end
end
