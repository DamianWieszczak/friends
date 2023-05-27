class Friend < ApplicationRecord
  validates :name, presence: true, length: { in: 3..50 }
  validates :surname, presence: true, length: { in: 3..60 }
  validates :email, presence: true, length: { in: 3..70 }

  enum meeting_place: %i[school work holiday party other]
end
