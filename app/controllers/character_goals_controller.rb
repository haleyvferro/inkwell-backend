class CharacterGoalsController < ApplicationController
  before_action :set_character_goal, only: [:show, :update, :destroy]

  # GET /character_goals
  def index
    @character_goals = CharacterGoal.all

    render json: @character_goals
  end

  # GET /character_goals/1
  def show
    render json: @character_goal
  end

  # POST /character_goals
  def create
    @character_goal = CharacterGoal.new(character_goal_params)

    if @character_goal.save
      render json: @character_goal, status: :created, location: @character_goal
    else
      render json: @character_goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_goals/1
  def update
    if @character_goal.update(character_goal_params)
      render json: @character_goal
    else
      render json: @character_goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_goals/1
  def destroy
    @character_goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_goal
      @character_goal = CharacterGoal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_goal_params
      params.require(:character_goal).permit(:player_notebook_id, :title)
    end
end
