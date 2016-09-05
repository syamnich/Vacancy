class Cvfile < ApplicationRecord
  belongs_to :vacancy
  mount_uploader :file, CvUploader
end
