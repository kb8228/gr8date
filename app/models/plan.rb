class Plan < ActiveRecord::Base
  belongs_to :user
  has_one :event
  has_one :dinner

  validates :date, presence: true
  validates :location, presence: true
  validates :user_id, presence: true

end
