class AddLogoToPosts < ActiveRecord::Migration[5.0]
  def change
	add_column :posts, :logo_img, :string
  end
end
