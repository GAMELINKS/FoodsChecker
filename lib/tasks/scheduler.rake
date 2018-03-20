desc "This task is called by the Heroku scheduler add-on"
task :expired_test => :environment do
  puts "expired test"
  puts "it works."
end

task :expired => :environment do

    @foods = Food.find(Food.ids)

    @foods.each do |food|
        if food.date == Date.today then
            user = User.find(food.user_id)
            user.email
        end
    end
end

task :test_toot => :environment do

    user = User.find(1).email

    client = Mastodon::REST::Client.new(base_url: ENV["MASTODON_URL"], bearer_token: ENV["ACCESS_TOKEN"])
    message = ("#{user.email}賞味期限が近い食品がありますよ！ https://foods-checker.herokuapp.com/ #FoodsChecker ")
    response = client.create_status(message)
end