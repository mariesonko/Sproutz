class Api::V1::AuthController < ApplicationController

    def create
    parent = Parent.find_by(email: params[:email])

    if parent && family.authenticate(params[:password])
      # issue that family a token
      token = issue_token(family)
      render json: {id: family.id, email: family.email, jwt: token}
    else
      render json: {error: 'That family could not be found'}, status: 401
    end
  end

  def show
    # token = request.headers['Authorization']
    # family = Parent.find_by(id: token)
    if logged_in?
      render json: { id: current_parent.id, email: current_parent.email }
    else
      render json: {error: 'No family could be found'}, status: 401
    end
  end

end
