class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    set_date
    @events = Event.all.sort_by(&:time)
    @event = Event.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save 
      redirect_to '/events', notice: "Your event was succesfully created"
    else 
      render :new, notice: "Events cannot be made for the same time"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(event_params)
      (redirect_to '/events')
    else 
      render :edit, notice: "Events cannot be made for the same time"
    end
  end

  def destroy
    @event.destroy
    redirect_to '/events'
  end

  private
    def set_event
      @event = Event.find_by(id: params[:id])
    end

    def set_date
      @date = params.fetch(:start_date, Date.today).to_date
    end

    def event_params
      params.require(:event).permit(:name, :time)
    end
end
