class Calendar < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :days, through: :notes

    validates :title, uniqueness: true
end
