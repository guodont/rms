class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :archiveno
      t.string :jiyaono
      t.boolean :issend
      t.string :sendway
      t.boolean :isduyan
      t.string :firstsend
      t.string :secondsend
      t.string :hmaterial
      t.string :umaterial
      t.string :mmaterial
      t.string :dmaterial
      t.string :pmaterial
      t.string :omaterial
      t.string :zmaterial
      t.string :remark

      t.timestamps null: false
    end
  end
end
