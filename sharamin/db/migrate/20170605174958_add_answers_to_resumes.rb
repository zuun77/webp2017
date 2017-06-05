class AddAnswersToResumes < ActiveRecord::Migration[5.0]
  def change
	add_column :resumes, :answers, :json
  end
end
