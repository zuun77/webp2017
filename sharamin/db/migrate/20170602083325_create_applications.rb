class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :id_num
      t.string :dept
      t.string :degree
      t.string :position

      t.timestamps
    end
  end
end
