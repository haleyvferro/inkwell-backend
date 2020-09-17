class GamePlayersController < ApplicationController
  before_action :set_game_player, only: [:show, :update, :destroy]

  # GET /game_players
  def index
    @game_players = GamePlayer.all

    render json: @game_players
  end

  # GET /game_players/1
  def show
    render json: @game_player
  end

  # POST /game_players
  def create
    @game_player = GamePlayer.new(game_player_params)

    if @game_player.save
      render json: @game_player, status: :created, location: @game_player
    else
      render json: @game_player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_players/1
  def update
    if @game_player.update(game_player_params)
      render json: @game_player
    else
      render json: @game_player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_players/1
  def destroy
    @game_player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_player
      @game_player = GamePlayer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_player_params
      params.require(:game_player).permit(:game_id, :user_id, :invite_pending)
    end
end
