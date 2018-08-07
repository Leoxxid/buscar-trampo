class JobsUpdaterJob < ApplicationJob
  require "sidekiq-scheduler"
  queue_as :scraping

  def perform(*args)
    Job.destroy_all
    Tag.all.each do |tag|
      begin
        jobs = []
        (1..3).each do |page|
          jobs << ProgramathorScraping.new(tag.name, page).jobs
          jobs << EmpregosScraping.new(tag.name, page).jobs
          jobs << NeuvooScraping.new(tag.name, page)
        end
        jobs.flatten.each { |attrs| Job.create(attrs.merge(tag: tag))}
      rescue
        puts "Ops, ocorreu um erro ao cadastrar este job!"
      end
    end
  end
end
