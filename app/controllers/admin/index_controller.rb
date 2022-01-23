class Admin::IndexController < ApplicationController
  def index
    @jobs = Job.where("company_id = 1")
  end
end
