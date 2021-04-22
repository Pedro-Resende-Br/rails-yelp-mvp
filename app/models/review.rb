class Review < ApplicationRecord
  belongs_to :Restaurant

  validates :content, presence: true
  validates :rating, presence: true
end
