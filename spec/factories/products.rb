FactoryBot.define do
  factory :product do
    name { Faker::Movie.title}
    price { 74.00 }
    description { Faker::Movies::StarWars.vehicle }
    information { Faker::Movies::StarWars.quote  }
  end
end