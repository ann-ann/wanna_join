class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :invite, foreign_key: true
      t.integer :text

      t.timestamps
    end
  end
end
