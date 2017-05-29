class UpdateUserIdToIntegersController < ApplicationController
  before_action :set_update_user_id_to_integer, only: [:show, :update, :destroy]

  # GET /update_user_id_to_integers
  def index
    @update_user_id_to_integers = UpdateUserIdToInteger.all

    render json: @update_user_id_to_integers
  end

  # GET /update_user_id_to_integers/1
  def show
    render json: @update_user_id_to_integer
  end

  # POST /update_user_id_to_integers
  def create
    @update_user_id_to_integer = UpdateUserIdToInteger.new(update_user_id_to_integer_params)

    if @update_user_id_to_integer.save
      render json: @update_user_id_to_integer, status: :created, location: @update_user_id_to_integer
    else
      render json: @update_user_id_to_integer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /update_user_id_to_integers/1
  def update
    if @update_user_id_to_integer.update(update_user_id_to_integer_params)
      render json: @update_user_id_to_integer
    else
      render json: @update_user_id_to_integer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /update_user_id_to_integers/1
  def destroy
    @update_user_id_to_integer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update_user_id_to_integer
      @update_user_id_to_integer = UpdateUserIdToInteger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def update_user_id_to_integer_params
      params.fetch(:update_user_id_to_integer, {})
    end
end
