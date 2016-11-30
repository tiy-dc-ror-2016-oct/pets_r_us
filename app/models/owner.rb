class Owner < ApplicationRecord
  has_many :pets
  has_many :comments, as: :commentable
end
