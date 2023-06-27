FactoryBot.define do
  factory :friend do
    name { Faker::Lorem.characters(number: 5) }
    surname { Faker::Lorem.characters(number: 10) }
    email { Faker::Internet.email }
    meeting_place { :school }
  end
end