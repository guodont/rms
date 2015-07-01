class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.string :nation
      t.date :birthday
      t.string :politcs
      t.string :diplomano
      t.string :college
      t.string :classname
      t.string :major
      t.string :studentno
      t.string :address
      t.string :img

      t.timestamps null: false
    end
  end
end
