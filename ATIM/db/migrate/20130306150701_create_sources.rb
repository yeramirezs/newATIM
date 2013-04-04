class CreateSources < ActiveRecord::Migration
  def up
    create_table :sources do |s|
      s.integer  "thesis_id",   :null => false
      s.string   "title",       :null => false
      s.text     "citation",    :null => false
      s.string   "url",         :null => true
      s.text     "analysis",    :null => true
    end
  end

  def down
    drop_table  :sources
  end
end
