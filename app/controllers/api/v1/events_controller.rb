class Api::V1::EventsController < ApplicationController

  def create
    event = Event.new(event_params)
    group = Group.find(params[:group])
    group.events << event
    cat = Category.find(params[:event][:categoryID])
    cat.events << event

    if event.valid?
      event.save
      render json: {events: Event.all, success: "#{event.title} has been created"}
    else
      render json: {failure: event.errors}
    end
  end

  def edit
    event = Event.find(params[:id])
    event.update(public: !event.public)
    render json: {events: Event.all, success: "#{event.title} has been created"}
  end

  private
  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :details, :location)
  end
end
