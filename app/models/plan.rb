class Plan < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  belongs_to :dinner

  validates :date, presence: true
  validates :location, presence: true
  validates :user_id, presence: true

end
