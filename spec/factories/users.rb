FactoryGirl.define do
  factory :user do
    name "Pepe Argento" #Faker::Name.name
    email "pepe@argento.com.ar" #Faker::Internet.email
    password Devise.friendly_token.first(8)
  end
end