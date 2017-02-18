require "rails_helper"

describe Category do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to belong_to(:game) }
  it { is_expected.to have_many(:answers) }
end
