require 'test_helper'

class RecSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rec_size = rec_sizes(:one)
  end

  test "should get index" do
    get rec_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_rec_size_url
    assert_response :success
  end

  test "should create rec_size" do
    assert_difference('RecSize.count') do
      post rec_sizes_url, params: { rec_size: {  } }
    end

    assert_redirected_to rec_size_url(RecSize.last)
  end

  test "should show rec_size" do
    get rec_size_url(@rec_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_rec_size_url(@rec_size)
    assert_response :success
  end

  test "should update rec_size" do
    patch rec_size_url(@rec_size), params: { rec_size: {  } }
    assert_redirected_to rec_size_url(@rec_size)
  end

  test "should destroy rec_size" do
    assert_difference('RecSize.count', -1) do
      delete rec_size_url(@rec_size)
    end

    assert_redirected_to rec_sizes_url
  end
end
