class Discipline < ApplicationRecord
    has_many :cohorts
    belongs_to :stream
end
