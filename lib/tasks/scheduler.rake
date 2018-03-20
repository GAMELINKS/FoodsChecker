desc "This task is called by the Heroku scheduler add-on"
task :expired_test => :environment do
  puts "expired test"
  puts "it works."
end

task :expired => :environment do

    for i in 1..Food.ids.max do
        if Food.find(i) != nil then
            if Food.find(i).date > Date.today.prev_day(3) then
                puts User.find(Food.find(i).user_id)
            end
        end
    end
end