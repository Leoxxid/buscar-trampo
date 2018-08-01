class JobsController < ApplicationController
  def show; end

  def index
    @search = params[:search]
    @jobs = Job.search params[:search] ||= '*', includes: [:tag]
  end
end
