class Student < ApplicationRecord
  belongs_to :batch
  belongs_to :teacher
  has_many :attendances
  has_many :classdays, through: :attendances

end
