require('factory_bot')

namespace :populate_jobs do
  desc "Create sample jobs for development" 
  task :create_jobs => :environment do
    Rake::Task['db:reset'].invoke
    Tag.create(name: "Ruby on Rails")
    Tag.create(name: "Python")
    Tag.create(name: "Java")
    Tag.create(name: "Angular")
    Tag.create(name: "React")
    20.times do
      job = FactoryBot.create(:job, tag: Tag.all.sample)
    end
  end
end
