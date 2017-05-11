class AlterPost < ActiveRecord::Migration[5.0]
  def change
	  rename_column :posts, :type, :recruit_type
  end
end
