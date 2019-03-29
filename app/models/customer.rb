class Customer < ApplicationRecord      
  has_and_belongs_to_many :cleaners
  has_one :city
  validates :first_name,  presence: true
  validates :last_name, presence: true
end
