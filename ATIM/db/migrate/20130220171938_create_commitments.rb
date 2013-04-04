class CreateCommitments < ActiveRecord::Migration
  def up
      create_table :commitments do |c|
        c.string     :title,      :null => false
        c.text       :description
        c.integer    :thesis_id,   :null => false
        c.integer    :meeting_id,  :null => false
        c.timestamp  :due_date,    :null => false
        c.boolean    :done,        :default => false
      end
   end

  def down
    drop_table  :commitments
  end
end
