class CreateSubsections < ActiveRecord::Migration
  def change
    create_table :subsections do |t|
      t.string :name
      t.string :description
      t.integer :thesis_id
      t.integer :section_id

      t.timestamps
    end
  end
end
