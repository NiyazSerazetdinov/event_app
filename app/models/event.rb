class Event < ActiveRecord::Base
  attr_accessible :user_id, :event_title, :scheduled_at, :recurrence, :description
  belongs_to :user

  validates :user_id, presence: true
  validates :event_title, presence: true, length: { maximum: 140 }
  validates :scheduled_at, presence: true
  

  default_scope order: 'events.created_at DESC'

end
