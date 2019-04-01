class Cleaner < ApplicationRecord
    has_and_belongs_to_many :cutomers
    has_many :cities
    belongs_to :booking ,optional: true

    validates :first_name,  presence: true
    validates :last_name, presence: true
    validates_numericality_of :quality_score, :less_than_or_equal_to  => 5.0
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }                    
end

