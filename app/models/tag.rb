class Tag < ApplicationRecord
  has_many :resources, through: :tag_resources
  has_many :tag_resources
end
