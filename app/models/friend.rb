class Friend < ApplicationRecord
  validates :name, presence: true, length: { in: 3..50 }
  validates :surname, presence: true, length: { in: 3..60 }
  validates :email, presence: true, length: { in: 3..70 }

  enum meeting_place: %i[school work holiday party other]

  scope :school, -> { where(meeting_place: "school") }
  scope :holiday, -> { where(meeting_place: "holiday") }
  scope :work, -> { where(meeting_place: "work") }
end
