class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :file
      t.integer :section_id
      t.text :description

      t.timestamps
    end
  end
end
