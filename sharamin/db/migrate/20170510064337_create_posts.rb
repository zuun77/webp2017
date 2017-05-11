class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :club
      t.datetime :deadline
      t.string :target
      t.string :type
      t.string :homepage
      t.string :description
      t.json :questions

      t.timestamps
    end
  end
end
