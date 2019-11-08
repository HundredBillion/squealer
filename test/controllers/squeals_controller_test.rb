require 'test_helper'

class SquealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @squeal = squeals(:one)
  end

  test "should get index" do
    get squeals_url
    assert_response :success
  end

  test "should get new" do
    get new_squeal_url
    assert_response :success
  end

  test "should create squeal" do
    assert_difference('Squeal.count') do
      post squeals_url, params: { squeal: { comment: @squeal.comment } }
    end

    assert_redirected_to squeal_url(Squeal.last)
  end

  test "should show squeal" do
    get squeal_url(@squeal)
    assert_response :success
  end

  test "should get edit" do
    get edit_squeal_url(@squeal)
    assert_response :success
  end

  test "should update squeal" do
    patch squeal_url(@squeal), params: { squeal: { comment: @squeal.comment } }
    assert_redirected_to squeal_url(@squeal)
  end

  test "should destroy squeal" do
    assert_difference('Squeal.count', -1) do
      delete squeal_url(@squeal)
    end

    assert_redirected_to squeals_url
  end
end
