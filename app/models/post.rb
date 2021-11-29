# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :sections, dependent: :destroy
end
