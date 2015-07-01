class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :cate
      t.string :remark

      t.timestamps null: false
    end
  end
end
