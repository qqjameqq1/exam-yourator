class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  def index
    @jobs = Job.includes(:company).all
  end

  private
    def set_job
      @job = Job.includes(:company).find(params[:id])
    end
end
