class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.search(params[:search]).page(params[:page]).per(5)
  end

  def show
    @vacancy = Vacancy.find_by(id: params[:id])
    @cvfile = Cvfile.new
  end
end
