class Api::V1::PlaydateController < ApplicationController

    def index
      @playdates = Playdate.all
      render json: @playdates
    end
end
