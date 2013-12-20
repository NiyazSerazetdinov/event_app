class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @events_all = current_user.events.paginate(page: params[ :page])
    @events_current = current_user.events.find(:all, :conditions => ["scheduled_at = ? or recurrence = ? or (recurrence = ? and strftime('%w', scheduled_at) = ?) or (recurrence = ? and strftime('%d', scheduled_at) = ?) or (recurrence = ? and strftime('%d', scheduled_at) = ? and strftime('%m', scheduled_at) = ? )", Date.today, "Daily", "Weekly", Date.today.wday.to_s, "Every month", Date.today.mday.to_s, "Every year", Date.today.mday.to_s, Date.today.month.to_s])
   # @events_current = t.paginate(page: params[ :page])
  end

end
