class FixPhoneInDinners < ActiveRecord::Migration
  def change
    rename_column :dinners, :phone, :phone_number
  end
end
