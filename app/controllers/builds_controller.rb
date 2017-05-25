class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :update, :destroy]

  # GET /builds
  def index
    @builds = Build.all

    render json: @builds.to_json(include: :users)
  end

  # GET /builds/1
  def show
    render json: @build.to_json(include: :users)
  end

  # POST /builds
  def create
    @build = Build.new(build_params)

    if @build.save
      render json: @build, status: :created, location: @build
    else
      render json: @build.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /builds/1
  def update
    if @build.update(build_params)
      render json: @build
    else
      render json: @build.errors, status: :unprocessable_entity
    end
  end

  # DELETE /builds/1
  def destroy
    @build.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build
      @build = Build.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def build_params
      params.require(:build).permit(:build_name, :start_date, :end_date, :site_address, :hotel_link, :family_information)
    end
end
