class Api::V1::EventsController < ApplicationController

    def index
      @events = Playdate.all
      render json: @events
    end
end
