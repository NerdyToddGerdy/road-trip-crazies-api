require 'test_helper'

class UpdateUserIdToIntegersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @update_user_id_to_integer = update_user_id_to_integers(:one)
  end

  test "should get index" do
    get update_user_id_to_integers_url, as: :json
    assert_response :success
  end

  test "should create update_user_id_to_integer" do
    assert_difference('UpdateUserIdToInteger.count') do
      post update_user_id_to_integers_url, params: { update_user_id_to_integer: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show update_user_id_to_integer" do
    get update_user_id_to_integer_url(@update_user_id_to_integer), as: :json
    assert_response :success
  end

  test "should update update_user_id_to_integer" do
    patch update_user_id_to_integer_url(@update_user_id_to_integer), params: { update_user_id_to_integer: {  } }, as: :json
    assert_response 200
  end

  test "should destroy update_user_id_to_integer" do
    assert_difference('UpdateUserIdToInteger.count', -1) do
      delete update_user_id_to_integer_url(@update_user_id_to_integer), as: :json
    end

    assert_response 204
  end
end
