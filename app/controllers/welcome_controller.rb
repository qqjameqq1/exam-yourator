class WelcomeController < ApplicationController
  def index
    # abort()

    @jobs = Job.all
    @companies = Company.all
  end
end
