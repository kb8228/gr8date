class RemovePlanReferenceFromEvents < ActiveRecord::Migration
  def change
    remove_reference :events, :plan, index: true, foreign_key: true
  end
end
