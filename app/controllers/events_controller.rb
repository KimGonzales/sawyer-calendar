class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save 
      redirect_to '/events'
    else 
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    (@event.update(event_params)) ? (redirect_to root_path) : (render :edit) 
  end

  def delete
    @event.destroy
    redirect_to root_path
  end

  private
    def set_event
      @event = Event.find_by(id: params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :time)
    end
end