class EventsController < ApplicationController

  def index
    redirect_to root_url
  end

  def new
    @event = Event.new
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
    @event = Event.find(params[:id])    
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
    redirect_to :back
  end

end
