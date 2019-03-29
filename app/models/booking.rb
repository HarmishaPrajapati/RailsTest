class Booking < ApplicationRecord
    validates :customer_name,  presence: true
    validates :cleaner_name, presence: true
end
