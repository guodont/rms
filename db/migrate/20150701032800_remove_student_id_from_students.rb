class RemoveStudentIdFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :studnet_id
  end
end
