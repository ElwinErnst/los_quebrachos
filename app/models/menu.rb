# frozen_string_literal: true

class Menu < ApplicationRecord
  has_and_belongs_to_many :reservation
end
