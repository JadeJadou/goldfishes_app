class Shark < ApplicationRecord
  has_many_attached :photos
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
end
