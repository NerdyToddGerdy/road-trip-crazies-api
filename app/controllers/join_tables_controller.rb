class JoinTablesController < ApplicationController
  before_action :set_join_table, only: [:show, :update, :destroy]

  # GET /join_tables
  def index
    @join_tables = JoinTable.all

    render json: @join_tables.to_json(include: [:user, :build])
  end

  # GET /join_tables/1
  def show
    render json: @join_table.to_json(include: [:user, :build])
  end

  # POST /join_tables
  def create
    @join_table = JoinTable.new(join_table_params)

    if @join_table.save
      render json: @join_table, status: :created, location: @join_table
    else
      render json: @join_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /join_tables/1
  def update
    if @join_table.update(join_table_params)
      render json: @join_table
    else
      render json: @join_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /join_tables/1
  def destroy
    @join_table.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table
      @join_table = JoinTable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def join_table_params
      params.require(:join_table).permit(:user, :build)
    end
end
