class ChangeDateColumnToDatetime < ActiveRecord::Migration[5.0]
  def change
    change_column :invites, :date, :datetime
  end
end
