class AddLocationDefault < ActiveRecord::Migration
  def change
    change_column :plans, :location, :string, :default => "Santa Monica"
  end
end
