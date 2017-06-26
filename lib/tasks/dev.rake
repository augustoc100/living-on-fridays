namespace :dev do
  desc "configura o ambiente de desenvolvimento"
  task setup: :environment do

  	10.times do |i|

  		 Space.create!(
  		 	name: Faker::Company.name,
  		 	description: Faker::Lorem.sentence

  		 	)
  	end
  end

end
