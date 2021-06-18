class Calendar < ApplicationRecord
    has_many :notes
    has_many :days, through: :notes
end
