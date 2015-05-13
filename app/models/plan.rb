class Plan < ActiveRecord::Base
  belongs_to :user
  has_one :event
  has_one :dinner
<<<<<<< HEAD
  
=======
>>>>>>> 1490e435c6e701e4046db273b9f817400cef20e1

  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :user_id, presence: true

end
