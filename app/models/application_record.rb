# frozen_string_literal: true

# Default ApplicationRecord class
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
