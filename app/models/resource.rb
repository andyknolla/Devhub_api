class Resource < ApplicationRecord
  belongs_to :category
  belongs_to :resource_type

  has_many :comments
  has_many :users, through: :comments

  has_many :favorites
  has_many :users, through: :favorites


  has_many :tag_resources
  has_many :tags, through: :tag_resources
end
