class Category < ApplicationRecord
    has_one :article
    has_many :location_categories
    has_many :locations, through: :location_categories
end
