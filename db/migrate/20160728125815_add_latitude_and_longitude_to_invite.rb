class AddLatitudeAndLongitudeToInvite < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :latitude, :float
    add_column :invites, :longitude, :float
  end
end
