class Chapter < ApplicationRecord
  # Associations
  belongs_to :country
  # Validations
  validates :name, :location, :country_id, :description, presence: true
  validates :name, uniqueness: true
end
