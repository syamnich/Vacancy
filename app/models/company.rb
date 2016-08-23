class Company < ApplicationRecord
  has_many :vacancies

  def info
    "#{country}, #{city}"
  end
end
