class AddColumnsToResume < ActiveRecord::Migration[5.0]
  def change
	add_column :resumes, :name, :string
	add_column :resumes, :dept, :string
	add_column :resumes, :id_num, :string
	add_column :resumes, :degree, :string
	add_column :resumes, :position, :string
  end
end
