class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.string :description
      t.integer :teacher_id

      t.timestamps
    end
  end
end
