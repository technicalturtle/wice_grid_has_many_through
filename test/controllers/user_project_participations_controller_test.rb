require 'test_helper'

class UserProjectParticipationsControllerTest < ActionController::TestCase
  setup do
    @user_project_participation = user_project_participations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_project_participations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_project_participation" do
    assert_difference('UserProjectParticipation.count') do
      post :create, user_project_participation: { project_id: @user_project_participation.project_id, user_id: @user_project_participation.user_id }
    end

    assert_redirected_to user_project_participation_path(assigns(:user_project_participation))
  end

  test "should show user_project_participation" do
    get :show, id: @user_project_participation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_project_participation
    assert_response :success
  end

  test "should update user_project_participation" do
    patch :update, id: @user_project_participation, user_project_participation: { project_id: @user_project_participation.project_id, user_id: @user_project_participation.user_id }
    assert_redirected_to user_project_participation_path(assigns(:user_project_participation))
  end

  test "should destroy user_project_participation" do
    assert_difference('UserProjectParticipation.count', -1) do
      delete :destroy, id: @user_project_participation
    end

    assert_redirected_to user_project_participations_path
  end
end
