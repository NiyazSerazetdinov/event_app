class HomeController < ApplicationController
  def index
    
      @users = User.all
      @events = Event.all
    #@feed_items = current_user.feed.paginate (page: params[:page])
    
  end
end
