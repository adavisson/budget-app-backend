class Bill < ApplicationRecord
  belongs_to :budget
  belongs_to :category
end
