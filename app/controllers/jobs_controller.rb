class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end

  def index
    @search = params[:search]
    @jobs = Job.search params[:search] ||= '*', includes: [:tag]
  end
end
