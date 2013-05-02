class AddSubsectionToDeliverable < ActiveRecord::Migration
  def change
    add_column :deliverables, :subsection_id, :integer
  end
end
