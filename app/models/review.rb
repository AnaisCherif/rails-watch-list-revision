class Review < ApplicationRecord
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 5 }
  validates :rating, inclusion: { in: [0,1,2,3,4,5] }
end
