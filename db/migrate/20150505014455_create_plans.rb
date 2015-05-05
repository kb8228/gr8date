class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.date :date
      t.time :time
      t.string :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
