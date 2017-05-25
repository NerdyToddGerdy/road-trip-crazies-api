require 'test_helper'

class BuildsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @build = builds(:one)
  end

  test "should get index" do
    get builds_url, as: :json
    assert_response :success
  end

  test "should create build" do
    assert_difference('Build.count') do
      post builds_url, params: { build: { build_name: @build.build_name, end_date: @build.end_date, family_information: @build.family_information, hotel_link: @build.hotel_link, site_address: @build.site_address, start_date: @build.start_date } }, as: :json
    end

    assert_response 201
  end

  test "should show build" do
    get build_url(@build), as: :json
    assert_response :success
  end

  test "should update build" do
    patch build_url(@build), params: { build: { build_name: @build.build_name, end_date: @build.end_date, family_information: @build.family_information, hotel_link: @build.hotel_link, site_address: @build.site_address, start_date: @build.start_date } }, as: :json
    assert_response 200
  end

  test "should destroy build" do
    assert_difference('Build.count', -1) do
      delete build_url(@build), as: :json
    end

    assert_response 204
  end
end
