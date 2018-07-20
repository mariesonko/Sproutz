class Api::V1::PlaydateController < ApplicationController

  before_action :find_playdate, only: [:show, :update, :destroy]

    def index
      @playdates = Playdate.all
      render json: @playdates, status: 200
    end

    def create
      playdate = Playdate.create(playdate_params)
      render json: playdate, status: 201
    end

    def show
      render json: @playdates, status: 200
    end

    def update
      @playdates.update(playdate_params)
      render json: @playdates, status: 200
    end

    def destroy
      playdate_id = @playdate.id
      @playdate.destroy
      render json: {message:"Playdate not deleted", playdate_id:playdate_id}
    end

      private
        def playdate_params
          params.permit(:host_id, :guest_id, :circle_id, :date, :startTime, :endTime )
        end

        def find_playdate
          @playdates = Playdate.find(params[:id])
        end
    end
end
