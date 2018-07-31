require('factory_bot')

namespace :populate_jobs do
  desc "Create sample jobs for development" 
  task :create_jobs => :environment do
    Rake::Task['db:reset'].invoke
    (1..20).each do |j|
      #fake_tag = FactoryBot.create(:tag)
      #job = FactoryBot.create(:job, tag: fake_tag)
      Job.new().save
    end
  end
end
