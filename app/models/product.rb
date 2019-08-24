class Product < ApplicationRecord
  belongs_to :category
  counter_culture :category
end
