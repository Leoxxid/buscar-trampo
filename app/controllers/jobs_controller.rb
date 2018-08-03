class JobsController < ApplicationController
  def index
    @search = params[:search]
    @jobs = Job.page.search @search ||= '*', page: params[:page], per_page: 15, includes: [:tag]
  end

  def show
    @job = Job.find(params[:id])
  end
end
