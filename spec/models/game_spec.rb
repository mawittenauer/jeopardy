require "rails_helper"

describe Game do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_many(:categories) }
end
