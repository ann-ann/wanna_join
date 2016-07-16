class Invite < ApplicationRecord
  belongs_to :user

  validates :title,       presence: true
  validates :description, presence: true
  validates :date,        presence: true
  validates :location,    presence: true
  validate :date_is_valid_datetime

  def date_is_valid_datetime
    errors.add(:date, 'must be a valid datetime') if ((DateTime.parse(date) rescue ArgumentError) == ArgumentError)
  end
end
