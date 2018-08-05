class Classday < ApplicationRecord
  belongs_to :batch
  has_many :attendances
  has_many :students
end
