class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :theses_id

      t.timestamps
    end
  end
end
