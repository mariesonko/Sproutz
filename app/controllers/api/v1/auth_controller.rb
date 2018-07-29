class Api::V1::AuthController < ApplicationController

    def create
    family = Family.find_by(username: params[:username])

    if family && family.authenticate(params[:password])
      # issue that family a token
      token = issue_token(family)
      render json: {id: family.id, username: family.username, jwt: token}
    else
      render json: {error: 'That family could not be found'}, status: 401
    end
  end

  def show
    # token = request.headers['Authorization']
    # family = Family.find_by(id: token)
    if logged_in?
      render json: { id: current_family.id, username: current_family.username }
    else
      render json: {error: 'No family could be found'}, status: 401
    end
  end

end
