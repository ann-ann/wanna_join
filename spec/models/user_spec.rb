require 'rails_helper'

describe User do
  it { is_expected.to have_many :invites }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:uid) }
  it { is_expected.to validate_presence_of(:uid) }
  it { is_expected.to validate_presence_of(:email) }
end
