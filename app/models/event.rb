class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  # An event can have many attendees
  has_many :attendances
  has_many :attendee, through: :attendances, source: :user
end
