class Api::V1::EventsController < ApplicationController

  before_action :find_event, only: [:show, :update, :destroy]

    def index
      @events = Event.all
      render json: @events, status: 200
    end

    def create
      event = Event.create(event_params)
      render json: event, status: 201
    end

    def show
      render json: @events, status: 200
    end

    def update
      @events.update(event_params)
      render json: @events, status: 200
    end

    def destroy
      event_id = @event.id
      @event.destroy
      render json: {message:"Event not deleted", event_id: event_id}
    end

    private
      def event_params
        params.permit(:eventType,:date, :startTime, :endTime, :spotsAvailable, :address, :city, :state, :zipCode, :country, :supervisedBy, :food, :rating, :eventFees, :title, :description)
      end

      def find_event
        @events = Event.find(params[:id])
      end

end
