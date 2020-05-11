class User < ApplicationRecord
  has_many :portfolios, dependent: :destroy
  has_many :stocks, through: :portfolios
end
