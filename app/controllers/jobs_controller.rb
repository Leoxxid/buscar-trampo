class JobsController < ApplicationController
  def show
  end

  def index
    @jobs = ProgramathorScraping.new("ruby-on-rails").jobs
  end
end
