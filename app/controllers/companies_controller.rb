class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.includes(:jobs).all
  end

  def show

  end

  private
    def set_company
      @company = Company.includes(:jobs).find(params[:id])
    end
end
