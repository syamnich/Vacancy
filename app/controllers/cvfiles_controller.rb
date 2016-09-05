class CvfilesController < ApplicationController
  def create
    @vacancy = Vacancy.find_by(id: params[:vacancy_id])
    @vacancy.cvfiles.create(file_params)
    flash[:notice] = "File uploaded"
    redirect_to vacancy_url(@vacancy)
  end

  private

  def file_params
    params.require(:cvfile).permit(:file)
  end
end
