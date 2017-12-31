require 'test_helper'

class HandymenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handyman = handymen(:one)
  end

  test "should get index" do
    get handymen_url
    assert_response :success
  end

  test "should get new" do
    get new_handyman_url
    assert_response :success
  end

  test "should create handyman" do
    assert_difference('Handyman.count') do
      post handymen_url, params: { handyman: {  } }
    end

    assert_redirected_to handyman_url(Handyman.last)
  end

  test "should show handyman" do
    get handyman_url(@handyman)
    assert_response :success
  end

  test "should get edit" do
    get edit_handyman_url(@handyman)
    assert_response :success
  end

  test "should update handyman" do
    patch handyman_url(@handyman), params: { handyman: {  } }
    assert_redirected_to handyman_url(@handyman)
  end

  test "should destroy handyman" do
    assert_difference('Handyman.count', -1) do
      delete handyman_url(@handyman)
    end

    assert_redirected_to handymen_url
  end
end
