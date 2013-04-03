class AddStateToThesis < ActiveRecord::Migration
  def change
  	add_column :theses, :state, :string
  end
end
