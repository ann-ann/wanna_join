require 'rails_helper'

describe Invite do
  it { is_expected.to belong_to :user }
  it { is_expected.to validate_presence_of(:title)
  it { is_expected.to validate_presence_of(:description)
  it { is_expected.to validate_presence_of(:location)
  it { is_expected.to validate_presence_of(:date)
end
