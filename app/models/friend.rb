# frozen_string_literal: true

class Friend < ApplicationRecord
  validates :name, presence: true, length: { in: 3..50 }
  validates :surname, presence: true, length: { in: 3..60 }
  validates :email, presence: true, length: { in: 3..70 }

  enum meeting_place: { school: 0, work: 1, holiday: 2, party: 3, other: 4 }

  scope :school, -> { where(meeting_place: 'school') }
  scope :holiday, -> { where(meeting_place: 'holiday') }
  scope :work, -> { where(meeting_place: 'work') }
end
