class JobsUpdaterJob < ApplicationJob
  require "sidekiq-scheduler"
  
  queue_as :scraping

  def perform(*args)
    puts "working"
  end
end
