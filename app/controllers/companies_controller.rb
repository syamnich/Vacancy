class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by(id: params[:id])
    @vacancies = @company.vacancies
  end
end
