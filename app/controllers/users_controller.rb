class UsersController < ApplicationController
#  before_filter :authenticate_user!

  def index
    @events_all = Event.paginate(page: params[ :page], per_page: 10)
    @events_current = Event.all.find_all{ |elem| elem.occur_today? || 
                               elem.occur_daily? || elem.occur_weekly_today? ||
                                               elem.occur_every_month_today? ||
                                                elem.occur_every_year_today?}
  end

end
