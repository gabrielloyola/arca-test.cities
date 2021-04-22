# frozen_string_literal: true

require 'rails_helper'

RSpec.describe State, type: :model do
  subject(:state) { build(:state) }

  it { is_expected.to have_many(:cities) }
end
