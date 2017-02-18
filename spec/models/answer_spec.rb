require "rails_helper"

describe Answer do
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to validate_presence_of(:points) }
  it { is_expected.to belong_to(:category) }
end
