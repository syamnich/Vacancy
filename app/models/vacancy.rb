class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :cvfiles
  scope :active, -> { where('date > :time', time: Time.zone.now) }

  def company_info
    "#{company.name}, #{company.country}, #{company.city}"
  end

  def self.search(term)
    if term
      active.where('lower(vacancies.name) LIKE :term OR lower(companies.name) LIKE :term OR lower(companies.city) LIKE :term OR lower(companies.country) LIKE :term', term: "%#{term.downcase}%").includes(:company).references(:company)
    else
      active
    end
  end
end
