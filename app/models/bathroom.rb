# frozen_string_literal: true

class Bathroom < ApplicationRecord
  has_and_belongs_to_many :reservation
end
