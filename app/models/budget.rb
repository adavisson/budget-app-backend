class Budget < ApplicationRecord
  belongs_to :user
  has_many :bills
  has_many :categories, through: :bills
end
