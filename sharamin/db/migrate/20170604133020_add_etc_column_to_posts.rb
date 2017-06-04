class AddEtcColumnToPosts < ActiveRecord::Migration[5.0]
  def change
	  add_column :posts, :etc, :string
  end
end
