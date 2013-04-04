class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :recommendation
      t.integer :thesis_id
      t.date :created

      t.timestamps
    end
  end
end
