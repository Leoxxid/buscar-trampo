require('factory_bot')

namespace :populate_jobs do
  desc "Create sample jobs for development"
  task :create_jobs => :environment do
    20.times do
      job = FactoryBot.create(:job, tag: Tag.all.sample)
    end
  end
end
