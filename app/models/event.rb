class Event < ActiveRecord::Base
  has_and_belongs_to_many :plans

  validates :event_name, presence: true
  validates :event_date, presence: true
  validates :event_time, presence: true
  validates :venue_name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :category, presence: true
  validates :venue_url, presence: true
end
