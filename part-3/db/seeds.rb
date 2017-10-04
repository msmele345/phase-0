
require 'faker'


users = 10.times.map do
  User.create!( :username => Faker::Name.first_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

10.times do
  Restaurant.create!(:name            => ["Mickey D's", "BK ", "Taco Bell", "Portillos",
 "Hipster Spot", "Crunchy Jams", "InstantRegret", "Pasta for Dayz", "Pizza Hut"].sample,
                  :address        => Faker::Address.street_address,
                  :state          => Faker::Address.state_abbr,
                  :city           =>Faker::Address.city_prefix,
                  :zip            => Faker::Address.zip_code)

end




10.times do
descriptions = ["Didnt like", "It was ok", "Not bad", "I vomitted everywhere", "It was excellent"]
review = {:description => descriptions.sample, :user_id => rand(1..10), :restaurant_id => rand(1..10)}

  Review.create(review)
end
