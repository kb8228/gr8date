class AddPlanToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :plan, index: true, foreign_key: true
  end
end
