class JobsController < ApplicationController

  def index
    @search = params[:search]
    @jobs = Job.search params[:search] ||= '*', includes: [:tag]
  end

  def show
    @job = Job.find(params[:id])
  end
end
