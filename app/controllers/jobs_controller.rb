class JobsController < ApplicationController
  def index
    @search = params[:search]
    @jobs = Job.search @search || '*', includes: [:tag],
                                       page: params[:page],
                                       per_page: 8
  end

  def show
    @job = Job.find(params[:id])
  end
end
