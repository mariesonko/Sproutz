class Api::V1::AuthController < ApplicationController

    def create
    parent = Parent.find_by(email: params[:email])

    if parent && parent.authenticate(params[:password])
      # issue that parent a token
      token = issue_token(parent)
      render json: {id: parent.id, email: parent.email, jwt: token}
    else
      render json: {error: 'That parent could not be found'}, status: 401
    end
  end

  def show
    # token = request.headers['Authorization']
    # parent = Parent.find_by(id: token)
    if logged_in?
      render json: { id: current_parent.id, email: current_parent.email }
    else
      render json: {error: 'No parent could be found'}, status: 401
    end
  end

end
