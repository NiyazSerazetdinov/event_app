class Event < ActiveRecord::Base
  attr_accessible :user_id, :event_title, :scheduled_at, :recurrence, :description
  belongs_to :user

  validates :user_id, presence: true
  validates :event_title, presence: true, length: { maximum: 50 }
  validates :scheduled_at, presence: true
  validates :description, length: { maximum: 140 }
  

  default_scope order: 'events.created_at DESC'

  def occur_today?
    self.scheduled_at == Date.today
  end

  def occur_daily?
    self.recurrence == "Daily" && self.scheduled_at < Date.today
  end

  def occur_weekly_today?
    self.recurrence == "Weekly" && self.scheduled_at.wday == Date.today.wday
  end

  def occur_every_month_today?
    self.recurrence == "Every month" && self.scheduled_at.mday == Date.today.mday
  end

  def occur_every_year_today?
    self.recurrence == "Every year" && self.scheduled_at.mday == Date.today.mday && self.scheduled_at.month == Date.today.month
  end

end
