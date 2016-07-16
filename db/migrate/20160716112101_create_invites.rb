class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.references :user, foreign_key: true
      t.string :description
      t.string :title
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
