require 'test_helper'

class TuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuit = tuits(:one)
  end

  test "should get index" do
    get tuits_url
    assert_response :success
  end

  test "should get new" do
    get new_tuit_url
    assert_response :success
  end

  test "should create tuit" do
    assert_difference('Tuit.count') do
      post tuits_url, params: { tuit: { tuit: @tuit.tuit } }
    end

    assert_redirected_to tuit_url(Tuit.last)
  end

  test "should show tuit" do
    get tuit_url(@tuit)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuit_url(@tuit)
    assert_response :success
  end

  test "should update tuit" do
    patch tuit_url(@tuit), params: { tuit: { tuit: @tuit.tuit } }
    assert_redirected_to tuit_url(@tuit)
  end

  test "should destroy tuit" do
    assert_difference('Tuit.count', -1) do
      delete tuit_url(@tuit)
    end

    assert_redirected_to tuits_url
  end
end
