class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :type
      t.string :cuisine
      t.datetime :datetime
      t.string :alcohol

      t.timestamps null: false
    end
  end
end
