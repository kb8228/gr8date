class User < ActiveRecord::Base
  # attr_reader :password













  # def authenticate(unencrypted_password)
  #   if BCrypt::Password.new(self.password_digest) == unencrypted_password
  #     return self
  #   else
  #     return false
  #   end
  # end

  # validates :name, presence: true
  # validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  # validates :password, presence: true, confirmation: true, length: { in: 6..20 }
end # User class ends


