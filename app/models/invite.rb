class Invite < ApplicationRecord
  belongs_to :user
  has_many   :comments

  validates :title,       presence: true
  validates :description, presence: true
  validates :date,        presence: true
  validates :location,    presence: true
  validate :date_is_valid_datetime

  def date_is_valid_datetime
    errors.add(:date, 'must be a valid datetime') if ((date.to_datetime rescue ArgumentError) == ArgumentError)
  end
end
