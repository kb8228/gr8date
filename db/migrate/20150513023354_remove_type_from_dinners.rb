class RemoveTypeFromDinners < ActiveRecord::Migration
  def change
    remove_column :dinners, :type, :string
  end
end
