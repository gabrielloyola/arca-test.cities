# frozen_string_literal: true

require 'rails_helper'

RSpec.describe City, type: :model do
  subject(:city) { build(:city) }

  it { is_expected.to belong_to(:state) }
end
