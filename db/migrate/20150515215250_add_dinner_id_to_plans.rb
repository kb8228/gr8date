class AddDinnerIdToPlans < ActiveRecord::Migration
  def change
    add_reference :plans, :dinner, index: true, foreign_key: true
  end
end
