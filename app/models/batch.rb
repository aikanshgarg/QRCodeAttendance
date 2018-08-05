class Batch < ApplicationRecord
  belongs_to :teacher
  has_many :students
  has_many :classdays
end
