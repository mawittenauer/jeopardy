require "rails_helper"

describe Game do
  it { is_expected.to validate_presence_of(:name) }
end
