require 'test_helper'

class ValidationPatternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validation_pattern = validation_patterns(:one)
  end

  test "should get index" do
    get validation_patterns_url
    assert_response :success
  end

  test "should get new" do
    get new_validation_pattern_url
    assert_response :success
  end

  test "should create validation_pattern" do
    assert_difference('ValidationPattern.count') do
      post validation_patterns_url, params: { validation_pattern: { name: @validation_pattern.name } }
    end

    assert_redirected_to validation_pattern_url(ValidationPattern.last)
  end

  test "should show validation_pattern" do
    get validation_pattern_url(@validation_pattern)
    assert_response :success
  end

  test "should get edit" do
    get edit_validation_pattern_url(@validation_pattern)
    assert_response :success
  end

  test "should update validation_pattern" do
    patch validation_pattern_url(@validation_pattern), params: { validation_pattern: { name: @validation_pattern.name } }
    assert_redirected_to validation_pattern_url(@validation_pattern)
  end

  test "should destroy validation_pattern" do
    assert_difference('ValidationPattern.count', -1) do
      delete validation_pattern_url(@validation_pattern)
    end

    assert_redirected_to validation_patterns_url
  end
end
