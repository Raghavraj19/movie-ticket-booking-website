class City < ApplicationRecord
  has_many :cinemas, dependent: :destroy
end
