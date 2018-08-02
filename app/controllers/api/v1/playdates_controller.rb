class Api::V1::PlaydatesController < ApplicationController

  before_action :find_playdate, only: [:show, :update, :destroy]

    def index
      @playdates = Playdate.all
      render json: @playdates, status: 200
    end

    def create
      playdate = Playdate.new(playdate_params)
      event= Event.find(playdate.event.id)
      playdate.host_id = event.playdates[0].host.id || 1
      if playdate.valid?
        playdate.save
        render json: playdate, status: 201
      else
        byebug
      end
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
          params.permit( :guest_id, :event_id, :date, :startTime, :endTime )
        end

        def find_playdate
          @playdates = Playdate.find(params[:id])
        end

end
