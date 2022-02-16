# frozen_string_literal: true

# class Restaurant
class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
