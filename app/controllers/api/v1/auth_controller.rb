
class Api::V1::AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
        
      if user && user.authenticate(params[:password])
        payload  = { user_id: user.id }
        token = JWT.encode(payload, 'Secret', 'HS256')
        render json: { id: user.id, username: user.username, token: token }
      else
        render json: { error: 'Invalid username or password.' }
      end
    end

    def show
      token = request.headers[:Authorization].split(' ').last
      decoded_token = JWT.decode(token, 'Secret', true, { algorithm: 'HS256' })
      user_id = decoded_token[0]['user_id']
      user = User.find(user_id)
      if user 
        render json: { id: user.id, username: user.username, token: token }
      else
        render json: {error: 'Invalid Token...'}
      end

    end

  end

  # password 