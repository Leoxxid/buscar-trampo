class JobsController < ApplicationController
  def show
  end

  def index
    @jobs = Job.all
  end
end
