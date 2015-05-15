class AddCategoryAndCuisineToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :cuisine, :string
  end
end
