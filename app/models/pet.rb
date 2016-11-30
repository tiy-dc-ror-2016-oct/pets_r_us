class Pet < ApplicationRecord
  belongs_to :owner
  has_many :comments, as: :commentable
end
