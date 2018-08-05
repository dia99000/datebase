require 'test_helper'

class ExamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @example = examples(:one)
  end

  test "should get index" do
    get examples_url
    assert_response :success
  end

  test "should get new" do
    get new_example_url
    assert_response :success
  end

  test "should create example" do
    assert_difference('Example.count') do
      post examples_url, params: { example: { ex1: @example.ex1, ex2: @example.ex2, ex3: @example.ex3 } }
    end

    assert_redirected_to example_url(Example.last)
  end

  test "should show example" do
    get example_url(@example)
    assert_response :success
  end

  test "should get edit" do
    get edit_example_url(@example)
    assert_response :success
  end

  test "should update example" do
    patch example_url(@example), params: { example: { ex1: @example.ex1, ex2: @example.ex2, ex3: @example.ex3 } }
    assert_redirected_to example_url(@example)
  end

  test "should destroy example" do
    assert_difference('Example.count', -1) do
      delete example_url(@example)
    end

    assert_redirected_to examples_url
  end
end
