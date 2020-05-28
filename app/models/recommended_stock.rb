class RecommendedStock < ApplicationRecord
  belongs_to :recommendation
  has_one :info_buy
end
