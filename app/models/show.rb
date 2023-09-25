class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen 
  has_many :bookngs, dependent: :destroy
end
