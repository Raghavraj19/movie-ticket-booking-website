class Movie < ApplicationRecord
  has_many :shows, dependent: :destroy
end
