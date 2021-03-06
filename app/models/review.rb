# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: true, presence: true, inclusion: { in: (0..5).to_a }
end
