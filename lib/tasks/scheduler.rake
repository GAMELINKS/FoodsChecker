desc "This task is called by the Heroku scheduler add-on"
task :expired_test => :environment do
  puts "expired test"
  puts "it works."
end

task :expired => :environment do

    @foods = Food.find(Food.ids)

    @foods.each do |food|
        user = User.find(food.user_id)
        user.email
    end
end