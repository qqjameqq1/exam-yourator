class Admin::JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def edit

  end

  def update
    if @job.update(job_params)

    else
      render 'edit'
    end
  end

  private
    def set_job
      @job = Job.includes(:company).find(params[:id])
    end

    def job_params
      params.permit(:name, :desc)
    end
end
