class AddLocationDetailsCityCountryToInvite < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :location_details, :string
    add_column :invites, :city, :string
    add_column :invites, :country, :string
  end
end
