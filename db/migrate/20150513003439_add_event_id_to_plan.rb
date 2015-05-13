class AddEventIdToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :event_id, :integer
  end
end
