class Attendance < ApplicationRecord
  belongs_to :classday
  belongs_to :student
end
