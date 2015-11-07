class ChangeColumnUsers < ActiveRecord::Migration
  def change
  	change_column :users, :picture, :text
  end
end
