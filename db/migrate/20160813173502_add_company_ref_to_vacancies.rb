class AddCompanyRefToVacancies < ActiveRecord::Migration[5.0]
  def change
    add_reference :vacancies, :company, foreign_key: true
  end
end
