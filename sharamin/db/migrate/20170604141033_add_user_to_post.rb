class AddUserToPost < ActiveRecord::Migration[5.0]
  def change
	  add_column :posts, :user, :integer
  end
end
