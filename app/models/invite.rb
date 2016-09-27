class Invite < ApplicationRecord
  belongs_to :user
  has_many   :comments

  validates :title,       presence: true
  validates :description, presence: true
  validates :date,        presence: true
  validates :location,    presence: true
  validate  :date_is_valid_datetime

  before_save :get_lat_lng

  def date_is_valid_datetime
    errors.add(:date, 'must be a valid datetime') if ((date.to_datetime rescue ArgumentError) == ArgumentError)
  end

  def get_lat_lng
    full_address = [self.location, self.city, self.country].reject(&:nil?).join(' ')
    if (self.new_record? || self.location_changed? || self.city_changed) && full_address.present?
      a = Geokit::Geocoders::GoogleGeocoder.geocode(full_address)
      self.latitude = a.lat
      self.longitude = a.lng
    end
  end
end
