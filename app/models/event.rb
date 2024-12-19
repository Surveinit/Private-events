class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  # An event can have many attendees
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  # def self.past
  #   where("event_date <= ?", Date.today)
  # end

  # def self.future
  #   where("event_date >= ?", Date.today)
  # end

  # Scope
  scope :past, -> { where("event_date <= ?", Date.today) }
  scope :future, -> { where("event_date >= ?", Date.today) }
end
