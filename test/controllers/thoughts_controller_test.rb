require 'test_helper'

class ThoughtsControllerTest < ActionController::TestCase
  setup do
    @thought = thoughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thoughts)
  end

  test "should create thought" do
    assert_difference('Thought.count') do
      post :create, thought: {  }
    end

    assert_response 201
  end

  test "should show thought" do
    get :show, id: @thought
    assert_response :success
  end

  test "should update thought" do
    put :update, id: @thought, thought: {  }
    assert_response 204
  end

  test "should destroy thought" do
    assert_difference('Thought.count', -1) do
      delete :destroy, id: @thought
    end

    assert_response 204
  end
end
