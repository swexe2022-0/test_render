class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true
    has_one :cartitem
end
