class Country < ApplicationRecord
  # Callbacks
  after_create_commit :update_countries

  # Validations
  validates :name, presence: true

  def update_countries
    broadcast_prepend_to 'countries', partial: 'countries/new_country', locals: { country: self },
                         target: 'countries'
  end
end
