class Chapter < ApplicationRecord
  # Associations
  belongs_to :country

  # Callbacks
  after_create_commit -> {
    broadcast_prepend_to 'chapters', partial: 'chapters/created_chapter',
                         locals: { chapter: self }, target: 'chapters' }

  # Validations
  validates :name, :location, :country_id, :description, presence: true
  validates :name, uniqueness: true
end
