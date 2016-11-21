require 'test_helper'

class TicketTaskAssignmentsControllerTest < ActionController::TestCase
  setup do
    @ticket_task_assignment = ticket_task_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_task_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_task_assignment" do
    assert_difference('TicketTaskAssignment.count') do
      post :create, ticket_task_assignment: { ticket_task_id: @ticket_task_assignment.ticket_task_id, user_id: @ticket_task_assignment.user_id }
    end

    assert_redirected_to ticket_task_assignment_path(assigns(:ticket_task_assignment))
  end

  test "should show ticket_task_assignment" do
    get :show, id: @ticket_task_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_task_assignment
    assert_response :success
  end

  test "should update ticket_task_assignment" do
    patch :update, id: @ticket_task_assignment, ticket_task_assignment: { ticket_task_id: @ticket_task_assignment.ticket_task_id, user_id: @ticket_task_assignment.user_id }
    assert_redirected_to ticket_task_assignment_path(assigns(:ticket_task_assignment))
  end

  test "should destroy ticket_task_assignment" do
    assert_difference('TicketTaskAssignment.count', -1) do
      delete :destroy, id: @ticket_task_assignment
    end

    assert_redirected_to ticket_task_assignments_path
  end
end
