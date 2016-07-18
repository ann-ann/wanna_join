class FixTextFieldInComments < ActiveRecord::Migration[5.0]
  def change
     change_column :comments, :text, :string
  end
end
