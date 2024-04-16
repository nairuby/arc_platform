# == Schema Information
#
# Table name: conferences
#
#  id         :bigint           not null, primary key
#  end_date   :datetime
#  location   :string
#  start_date :datetime
#  status     :integer          default(0)
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Conference < ApplicationRecord
  # Validations
  validates :title, presence: true
  validate :only_one_upcoming_and_ongoing_conference
  validate :only_one_conference_per_year

  # Enums
  enum status: { upcoming: 0, ongoing: 1, past: 2 }

  # Class methods

  def self.current
    where(status: %i[upcoming ongoing]).first
  end

  # Instance methods

  def upcoming?
    status == 'upcoming'
  end

  def ongoing?
    status == 'ongoing'
  end

  def past?
    status == 'past'
  end

  # Private methods

  private

  def only_one_upcoming_and_ongoing_conference
    return if Conference.where(status: %i[upcoming ongoing]).count <= 1

    errors.add(:status, 'Only one conference can be upcoming or ongoing')
  end

  def only_one_conference_per_year
    return if Conference.where('extract(year from start_date) = ?', start_date.year).count <= 1

    errors.add(:start_date, 'Only one conference can be held per year')
  end

end
