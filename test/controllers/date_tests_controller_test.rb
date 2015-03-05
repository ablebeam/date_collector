require 'test_helper'

class DateTestsControllerTest < ActionController::TestCase
  setup do
    @date_test = date_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_test" do
    assert_difference('DateTest.count') do
      post :create, date_test: { expected: @date_test.expected, name: @date_test.name }
    end

    assert_redirected_to date_test_path(assigns(:date_test))
  end

  test "should show date_test" do
    get :show, id: @date_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @date_test
    assert_response :success
  end

  test "should update date_test" do
    patch :update, id: @date_test, date_test: { expected: @date_test.expected, name: @date_test.name }
    assert_redirected_to date_test_path(assigns(:date_test))
  end

  test "should destroy date_test" do
    assert_difference('DateTest.count', -1) do
      delete :destroy, id: @date_test
    end

    assert_redirected_to date_tests_path
  end
end
