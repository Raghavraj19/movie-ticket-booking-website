class Cinema < ApplicationRecord
  belongs_to :city 
  has_many :screens, dependent: :destroy
end
