class JobsUpdaterJob < ApplicationJob
  queue_as :scraping

  def perform(*args)
    puts "working"
  end
end
