class JobsController < ApplicationController
  def show
  end

  def index
    @jobs = Job.search "*"
  end
end
