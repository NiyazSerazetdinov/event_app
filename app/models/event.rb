class Event < ActiveRecord::Base
  attr_accessible :user_id, :event_title, :scheduled_at, :recurrence, :description
  belongs_to :user

  validates :user_id, presence: true
  validates :event_title, presence: true, length: { maximum: 140 }
  validates :scheduled_at, presence: true
  

  default_scope order: 'events.created_at DESC'

  def repeats_today?
    recurrence == "Daily"
  end

  def repeats_this_week?
    (recurrence == "Weekly") && (scheduled_at.wday == Date.today.wday)
  end

  def repeats_this_month?
    (recurrence == "Every month") && (scheduled_at.wday == Date.today.wday)
  end

  def repeats_this_year?
    (recurrence == 'Every year') && (scheduled_at.mday == date.now.mday) && (scheduled_at.month == Date.now.month)
  end

end