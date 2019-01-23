class Event < ApplicationRecord
  validates :time, uniqueness: true
end
