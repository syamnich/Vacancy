class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @companies = Company.find_by(id: params[:id])
    @vacancies = @companies.vacancies
  end
end
