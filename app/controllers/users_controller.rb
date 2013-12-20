class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @events_all = current_user.events.paginate(page: params[ :page])
    @events_current = current_user.events.find_all{ |elem| elem.occur_today? || elem.occur_daily? || elem.occur_weekly_today? || elem.occur_every_month_today? || elem.occur_every_year_today?}
  end

end
