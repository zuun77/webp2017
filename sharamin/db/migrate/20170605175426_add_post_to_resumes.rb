class AddPostToResumes < ActiveRecord::Migration[5.0]
  def change
    add_reference :resumes, :post, foreign_key: true
  end
end
