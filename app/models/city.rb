class City < ApplicationRecord
  belongs_to :cleaner
  belongs_to :customer
end
