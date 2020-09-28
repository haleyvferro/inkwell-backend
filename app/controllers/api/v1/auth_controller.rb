
class Api::V1::AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
        
      if user && user.authenticate(params[:password])
        payload  = { user_id: user.id }
        token = JWT.encode(payload, 'Secret', 'HS256')
        gm_notebooks = user.game_master_notebooks.map do |notebook|
          {
            id: notebook.id,
            user_id: notebook.user_id,
            name: notebook.name,
            gm_notes: notebook.game_master_notes
          }
        end
        render json: { id: user.id, username: user.username, token: token, character_notebooks: user.character_notebooks, game_master_notebooks: gm_notebooks, game_creations: user.game_creations, games: user.games }
      else
        render json: { error: 'Invalid username or password.' }
      end
    end

    def show
      token = request.headers[:Authorization].split(' ').last
      decoded_token = JWT.decode(token, 'Secret', true, { algorithm: 'HS256' })
      user_id = decoded_token[0]['user_id']
      user = User.find(user_id)
      gm_notebooks = user.game_master_notebooks.map do |notebook|
        {
          id: notebook.id,
          user_id: notebook.user_id,
          name: notebook.name,
          gm_notes: notebook.game_master_notes
        }
      end
      if user 
        render json: { id: user.id, username: user.username, token: token, character_notebooks: user.character_notebooks, game_master_notebooks: gm_notebooks, game_creations: user.game_creations, games: user.games, game_players: user.game_players }
      else
        render json: {error: 'Invalid Token...'}
      end

    end

  end

  # password 