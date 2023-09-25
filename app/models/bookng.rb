class Bookng < ApplicationRecord
  belongs_to :customer 
  belongs_to :show
  has_one :payment
  has_one :ticket
  serialize :seats_ids
end
