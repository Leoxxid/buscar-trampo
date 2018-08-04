class JobsUpdaterJob < ApplicationJob
  require "sidekiq-scheduler"
  queue_as :scraping

  def perform(*args)
    Job.destroy_all
    Tag.all.each do |tag|
      jobs = []
      (1..3).each do |page|
        begin
          jobs << ProgramathorScraping.new(tag.name, page).jobs
          jobs << EmpregosScraping.new(tag.name, page).jobs
          jobs << NeuvooScraping.new(tag.name, page).jobs
        rescue
          puts "Ops, ocorreu um erro ao buscar este job!"
        end
      end
      jobs.flatten.each { |attrs| Job.create(attrs.merge(tag: tag))}
    end
    Job.reindex
  end
end
