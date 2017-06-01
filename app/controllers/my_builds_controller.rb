class MyBuildsController < ApplicationController
  before_action :set_my_build, only: [:show, :update, :destroy]

  # GET /my_builds
  def index
    @my_builds = MyBuild.all

    render json: @my_builds.to_json(include: [:user, :build])
  end

  # GET /my_builds/1
  def show
    render json: @my_build.to_json(include: [:user, :build])
  end

  # POST /my_builds
  def create
    @my_build = MyBuild.new(my_build_params)

    if @my_build.save
      render json: @my_build, status: :created, location: @my_build
    else
      render json: @my_build.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_builds/1
  def update
    if @my_build.update(my_build_params)
      render json: @my_build
    else
      render json: @my_build.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_builds/1
  def destroy
    @my_build.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_build
      @my_build = MyBuild.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_build_params
      params.require(:my_build).permit(:build_id, :user_id)
    end
end
