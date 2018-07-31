require('factory_bot')

namespace :populate_jobs do
  desc "Create sample jobs for development" 
  task :create_jobs => :environment do
    Rake::Task['db:reset'].invoke
    20.times do
      fake_tag = Tag.all.sample
      job = FactoryBot.create(:job, tag: fake_tag)
    end
  end
end
