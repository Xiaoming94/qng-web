class AddFiletypeToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :filetype, :string
  end
end
