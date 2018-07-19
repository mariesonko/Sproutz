class Api::V1::PlaydatesController < ApplicationController

    def index
      @playdates = Playdate.all
      render json: @playdates
    end
end
