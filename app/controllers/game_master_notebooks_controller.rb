class GameMasterNotebooksController < ApplicationController
  before_action :set_game_master_notebook, only: [:show, :update, :destroy]

  # GET /game_master_notebooks
  def index
    @game_master_notebooks = GameMasterNotebook.all

    render json: @game_master_notebooks
  end

  # GET /game_master_notebooks/1
  def show
    render json: @game_master_notebook
  end

  # POST /game_master_notebooks
  def create
    @game_master_notebook = GameMasterNotebook.new(game_master_notebook_params)

    if @game_master_notebook.save
      render json: @game_master_notebook, status: :created, location: @game_master_notebook
    else
      render json: @game_master_notebook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_master_notebooks/1
  def update
    if @game_master_notebook.update(game_master_notebook_params)
      render json: @game_master_notebook
    else
      render json: @game_master_notebook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_master_notebooks/1
  def destroy
    @game_master_notebook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_master_notebook
      @game_master_notebook = GameMasterNotebook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_master_notebook_params
      params.require(:game_master_notebook).permit(:user_id, :game_id, :name)
    end
end
