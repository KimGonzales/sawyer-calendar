class Event < ApplicationRecord
  validates :time, uniqueness: true
  validates :name, presence: true
end
