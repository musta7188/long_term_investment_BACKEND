class Portfolio < ApplicationRecord
  belongs_to :user 
  has_many :stocks, dependent: :destroy
end

