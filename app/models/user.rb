# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :pets
  has_many :appointments, through: :pets
end
