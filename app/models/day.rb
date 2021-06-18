class Day < ApplicationRecord
  has_many :notes
  has_many :calendars, through: :notes
end
