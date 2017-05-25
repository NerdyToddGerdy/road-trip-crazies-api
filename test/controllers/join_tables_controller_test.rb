require 'test_helper'

class JoinTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table = join_tables(:one)
  end

  test "should get index" do
    get join_tables_url, as: :json
    assert_response :success
  end

  test "should create join_table" do
    assert_difference('JoinTable.count') do
      post join_tables_url, params: { join_table: { build: @join_table.build, user: @join_table.user } }, as: :json
    end

    assert_response 201
  end

  test "should show join_table" do
    get join_table_url(@join_table), as: :json
    assert_response :success
  end

  test "should update join_table" do
    patch join_table_url(@join_table), params: { join_table: { build: @join_table.build, user: @join_table.user } }, as: :json
    assert_response 200
  end

  test "should destroy join_table" do
    assert_difference('JoinTable.count', -1) do
      delete join_table_url(@join_table), as: :json
    end

    assert_response 204
  end
end
