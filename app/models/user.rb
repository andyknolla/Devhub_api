class User < ApplicationRecord
  # has_many :comments
  # has_many :favorites
  has_many :resources, through: :favorites
  has_many :resources, through: :comments
end
