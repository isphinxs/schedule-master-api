class Calendar < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :days, through: :notes

    validates :title, uniqueness: true
    validates :title, :start_month, :start_year, :end_month, :end_year, presence: true
end
