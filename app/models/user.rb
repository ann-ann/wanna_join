class User < ApplicationRecord
  has_many :invites

  validates :name,       presence: true
  validates :uid,        presence: true, uniqueness: true
  validates :image_url,  presence: true

  def self.from_omniauth(auth_hash)
    user = find_or_create_by(uid: auth_hash['uid'])
    user.name = auth_hash['info']['name']
    user.image_url = auth_hash['info']['image']
    user.email = auth_hash['info']['email']
    user.save!
    user
  end
end
