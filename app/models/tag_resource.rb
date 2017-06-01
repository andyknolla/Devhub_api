class TagResource < ApplicationRecord
  belongs_to :resource
  belongs_to :tag
end
