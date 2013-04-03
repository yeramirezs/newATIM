class CreateMeetingNotes < ActiveRecord::Migration
  def change
    create_table :meeting_notes do |t|
      t.string     :note,      :null => false
      t.integer    :thesis_id,   :null => false
      t.integer    :meeting_id, :null => false

      t.timestamps
    end
  end
end
