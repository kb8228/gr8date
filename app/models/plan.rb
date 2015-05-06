class Plan < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :user_id, presence: true

end
