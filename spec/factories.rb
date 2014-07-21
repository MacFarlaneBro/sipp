FactoryGirl.define do
  factory :user do
    name       "Charlie Brodie"
    email      "charliembrodie@gmail.com"
    password   "foobaroo"
    password_confirmation "foobaroo"
  end
end
