require 'test_helper'

class UserTaskAssignmentsControllerTest < ActionController::TestCase
  setup do
    @user_task_assignment = user_task_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_task_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_task_assignment" do
    assert_difference('UserTaskAssignment.count') do
      post :create, user_task_assignment: { task_id: @user_task_assignment.task_id, user_id: @user_task_assignment.user_id }
    end

    assert_redirected_to user_task_assignment_path(assigns(:user_task_assignment))
  end

  test "should show user_task_assignment" do
    get :show, id: @user_task_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_task_assignment
    assert_response :success
  end

  test "should update user_task_assignment" do
    patch :update, id: @user_task_assignment, user_task_assignment: { task_id: @user_task_assignment.task_id, user_id: @user_task_assignment.user_id }
    assert_redirected_to user_task_assignment_path(assigns(:user_task_assignment))
  end

  test "should destroy user_task_assignment" do
    assert_difference('UserTaskAssignment.count', -1) do
      delete :destroy, id: @user_task_assignment
    end

    assert_redirected_to user_task_assignments_path
  end
end
