class EventsController < ApplicationController

  def index
    @events_all = Event.paginate(page: params[ :page], per_page: 10)
    @events_current = Event.all.find_all{ |elem| elem.today_event?}
    if user_signed_in?
    @my_events_all = current_user.events.paginate(page: params[ :page], per_page: 10)
    @my_events_current = current_user.events.find_all{ |elem| elem.today_event?}
    end
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(params[:event])
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @event = current_user.events.find(params[:id])    
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:success] = "Event updated"
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to(user_events_url(current_user))
  end

end
