require 'test_helper'

class MyBuildsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_build = my_builds(:one)
  end

  test "should get index" do
    get my_builds_url, as: :json
    assert_response :success
  end

  test "should create my_build" do
    assert_difference('MyBuild.count') do
      post my_builds_url, params: { my_build: { build_id: @my_build.build_id, user_id: @my_build.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show my_build" do
    get my_build_url(@my_build), as: :json
    assert_response :success
  end

  test "should update my_build" do
    patch my_build_url(@my_build), params: { my_build: { build_id: @my_build.build_id, user_id: @my_build.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy my_build" do
    assert_difference('MyBuild.count', -1) do
      delete my_build_url(@my_build), as: :json
    end

    assert_response 204
  end
end
