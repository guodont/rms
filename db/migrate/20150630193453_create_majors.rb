class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.string :name
      t.integer :college_id

      t.timestamps null: false
    end
  end
end
