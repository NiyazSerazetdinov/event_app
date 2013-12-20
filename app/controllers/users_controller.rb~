class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @events_all = current_user.events.paginate(page: params[ :page])
    @events_current = current_user.events.find(:all, :conditions => ["scheduled_at = ? or recurrence = ? or (recurrence = ? and extract(dow from scheduled_at) = ?) or (recurrence = ? and extract(day from scheduled_at) = ?) or (recurrence = ? and extract(day from scheduled_at) = ? and extract(month from scheduled_at) = ? )", Date.today, "Daily", "Weekly", Date.today.wday.to_s, "Every month", Date.today.mday.to_s, "Every year", Date.today.mday.to_s, Date.today.month.to_s])
  end

end
