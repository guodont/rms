class AddStudentIdToArchives < ActiveRecord::Migration
  def change
    add_column :archives, :student_id, :integer
  end
end
