class CreateMeetingResources < ActiveRecord::Migration
  def change

    # Recursos asociados a una reunión
    create_table "meeting_resources", :force => true do |t|
      t.integer  "thesis_id",   :null => false
      t.integer  "meeting_id",  :null => false
      t.string   "description", :null => false
      t.string   "file_name",   :null => false
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
    end

  end
end
