FactoryGirl.define do
  factory :user do
    name "My String"
    email "mystring@example.com"
    password "password"
    password_confirmation "password"
  end

end