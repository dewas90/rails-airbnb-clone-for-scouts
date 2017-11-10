class AddBookedToCampSites < ActiveRecord::Migration[5.0]
  def change
    add_column :camp_sites, :booked, :boolean, default: false
  end
end
