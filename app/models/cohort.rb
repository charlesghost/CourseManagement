class Cohort < ApplicationRecord
    belongs_to :discipline
    
    has_many :students
end
