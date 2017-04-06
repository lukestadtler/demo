require 'test_helper'

class ElevatorAlgorithmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elevator_algorithm = elevator_algorithms(:one)
  end

  test "should get index" do
    get elevator_algorithms_url
    assert_response :success
  end

  test "should get new" do
    get new_elevator_algorithm_url
    assert_response :success
  end

  test "should create elevator_algorithm" do
    assert_difference('ElevatorAlgorithm.count') do
      post elevator_algorithms_url, params: { elevator_algorithm: {  } }
    end

    assert_redirected_to elevator_algorithm_url(ElevatorAlgorithm.last)
  end

  test "should show elevator_algorithm" do
    get elevator_algorithm_url(@elevator_algorithm)
    assert_response :success
  end

  test "should get edit" do
    get edit_elevator_algorithm_url(@elevator_algorithm)
    assert_response :success
  end

  test "should update elevator_algorithm" do
    patch elevator_algorithm_url(@elevator_algorithm), params: { elevator_algorithm: {  } }
    assert_redirected_to elevator_algorithm_url(@elevator_algorithm)
  end

  test "should destroy elevator_algorithm" do
    assert_difference('ElevatorAlgorithm.count', -1) do
      delete elevator_algorithm_url(@elevator_algorithm)
    end

    assert_redirected_to elevator_algorithms_url
  end
end
