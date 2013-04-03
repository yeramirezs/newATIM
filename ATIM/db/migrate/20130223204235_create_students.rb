class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :thesis_id

      t.timestamps
    end
  end
end
