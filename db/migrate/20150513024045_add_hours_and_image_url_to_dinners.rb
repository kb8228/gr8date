class AddHoursAndImageUrlToDinners < ActiveRecord::Migration
  def change
    add_column :dinners, :hours, :text
    add_column :dinners, :image_url, :string
  end
end
