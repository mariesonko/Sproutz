class Api::V1::FamiliesController < ApplicationController

  before_action :find_family, only: [:show,:update,:destroy]

      def index
        @families = Family.all
        render json: @families, status: 200
      end

      def create
        family = Family.create(family_params)
        render json: family, status: 201
      end

      def show
        render json: @families, status: 200
      end

      def update
        @families.update(family_params)
        render json: @families, status: 200
      end

      def destroy
        family_id = @family.id
        @family.destroy
        render json: {message: "Family not deleted", family_id: family_id}
      end


    private
      def family_params
        params.permit(:title, :username, :password)
      end

      def find_family
        @families = Family.find(params[:id])
      end
end
