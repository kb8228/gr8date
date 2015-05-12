class User < ActiveRecord::Base
  has_many :plans
  before_save :format_user_input
  #has_secure_password 
  #- read up on this and maybe use instead of authenticate?
  #it replaces attr_reader too
  #it replaces PW setter method, it replaces authenticate method
  #it replaces PW validations for presence and confirmation
  #don't need to change authenticate method in sessions controller
  
  attr_reader :password


  #Creating PW digest entry for user:
  def password=(unencrypted_password)
    if not(unencrypted_password.nil? or unencrypted_password.empty?)
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)
    end
  end


  def authenticate(unencrypted_password)
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      return self
    else
      return false
    end
  end

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, presence: true, confirmation: true, length: { in: 6..20 }, on: :create
  validates :password, confirmation: true, length: { in: 6..20 }, on: :update, :if => "password"

  private
  def format_user_input
    self.name = self.name.titleize
    self.email = self.email.downcase
  end

end # User class ends


