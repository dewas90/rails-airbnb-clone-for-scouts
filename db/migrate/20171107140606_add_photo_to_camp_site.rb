class AddPhotoToCampSite < ActiveRecord::Migration[5.0]
  def change
    add_column :camp_sites, :photo, :string
  end
end
