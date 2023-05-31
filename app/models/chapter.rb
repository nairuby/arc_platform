# frozen_string_literal: true

class Chapter < ApplicationRecord
  # Attachments
  has_one_attached :image

  # Associations
  belongs_to :country
  has_many :projects, dependent: :nullify
  has_many :users_chapters, dependent: :destroy
  has_many :users, through: :users_chapters

  # Validations
  validates :name, :location, :description, presence: true
  validates :name, uniqueness: true

  ##
  # Image validation not working because of 'no implicit conversion of StringIO into String' error
  # validates :image, attached: true, content_type: %i[jpg png jpeg],
  #           dimension: {
  #             width: 400, height: 225,
  #             message: 'is not given between dimension. It should be 400x225',
  #           }
end
