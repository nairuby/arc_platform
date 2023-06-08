class LearningMaterial < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :difficulty, presence: true
  # validates :image_url, presence: true 
  validates :resource_url, presence: true
end
