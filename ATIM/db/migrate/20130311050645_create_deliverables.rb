class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :title
      t.integer :thesis_id
      t.string :description
      t.string :file_name

      t.timestamps
    end
  end
end
