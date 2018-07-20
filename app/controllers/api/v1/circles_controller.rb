class Api::V1::CirclesController < ApplicationController

  before_action :find_circle, only [:show, :update, :destroy]

      def index
        @circles = Circle.all
        render json: @circles, status: 200
      end

      def create
        circle = Circle.create(circle_params)
        render json: circle, status: 201
      end

      def show
        render json: @circles, status: 200
      end

      def update
        @circles.update(circle_params)
        render json: @circles, status: 200
      end

      def destroy
        circle_id = @circle.id
        @circle.destroy
        render json: {message:"Circle not deleted", circle_id: circle_id}
      end

    private
      def circle_params
        params.permit(:name, :child_id, :playdate_id, :private, :public, :size, :decription )
      end

      def find_circle
        @circles = Circle.find(params[:id])
      end
    end
end
