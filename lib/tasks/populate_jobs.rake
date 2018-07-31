require('factory_bot')

namespace :populate_jobs do
  desc "Create sample jobs for development" 
  task :create_jobs => :environment do
    Rake::Task['db:reset'].invoke
    20.times do
      job = FactoryBot.create(:job)
    end
  end
end
