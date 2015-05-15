class Dinner < ActiveRecord::Base
  has_many :plans

  
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :cuisine, presence: true
  validates :alcohol, presence: true
  validates :hours, presence: true
  validates :image_url, presence: true

  def self.cuisines
    Dinner.all.map(&:cuisine).uniq
  end

end
