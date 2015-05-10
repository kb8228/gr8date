class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_date
      t.string :event_time
      t.string :venue_name
      t.string :address
      t.string :phone
      t.string :category
      t.string :venue_url

      t.timestamps null: false
    end
  end
end
