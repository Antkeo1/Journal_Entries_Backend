# frozen_string_literal: true

class Journal < ApplicationRecord
  belongs_to :user
  # validates :user, presence: true
end
