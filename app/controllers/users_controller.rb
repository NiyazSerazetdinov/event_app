class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @events_all = current_user.events.paginate(page: params[ :page])
  end

end
