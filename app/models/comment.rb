class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :invite

  validates :user_id,   presence: true
  validates :invite_id, presence: true
  validates :text,   presence: true
end
