FactoryGirl.define do
  factory :user do
    name     "Lola"
    email    "lo@bear.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
