class JobsUpdaterJob < ApplicationJob
  require "sidekiq-scheduler"
  queue_as :scraping

  def perform(*args)
    Job.destroy_all
    Tag.all.each do |tag|
      jobs = []
      (1..5).each do |page|
        jobs << ProgramathorScraping.new(tag.name, page).jobs
        jobs << EmpregosScraping.new(tag.name, page).jobs
      end
      jobs.flatten.each { |attrs| Job.create(attrs.merge(tag: tag))}
    end
  end
end
