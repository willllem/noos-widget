require "test_helper"

class WearablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wearable = wearables(:one)
  end

  test "should get index" do
    get wearables_url
    assert_response :success
  end

  test "should get new" do
    get new_wearable_url
    assert_response :success
  end

  test "should create wearable" do
    assert_difference("Wearable.count") do
      post wearables_url, params: { wearable: { image_url: @wearable.image_url, name: @wearable.name } }
    end

    assert_redirected_to wearable_url(Wearable.last)
  end

  test "should show wearable" do
    get wearable_url(@wearable)
    assert_response :success
  end

  test "should get edit" do
    get edit_wearable_url(@wearable)
    assert_response :success
  end

  test "should update wearable" do
    patch wearable_url(@wearable), params: { wearable: { image_url: @wearable.image_url, name: @wearable.name } }
    assert_redirected_to wearable_url(@wearable)
  end

  test "should destroy wearable" do
    assert_difference("Wearable.count", -1) do
      delete wearable_url(@wearable)
    end

    assert_redirected_to wearables_url
  end
end
