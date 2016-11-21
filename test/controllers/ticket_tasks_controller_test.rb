require 'test_helper'

class TicketTasksControllerTest < ActionController::TestCase
  setup do
    @ticket_task = ticket_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_task" do
    assert_difference('TicketTask.count') do
      post :create, ticket_task: { content: @ticket_task.content, is_done: @ticket_task.is_done, ticket_id: @ticket_task.ticket_id, user_id: @ticket_task.user_id }
    end

    assert_redirected_to ticket_task_path(assigns(:ticket_task))
  end

  test "should show ticket_task" do
    get :show, id: @ticket_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_task
    assert_response :success
  end

  test "should update ticket_task" do
    patch :update, id: @ticket_task, ticket_task: { content: @ticket_task.content, is_done: @ticket_task.is_done, ticket_id: @ticket_task.ticket_id, user_id: @ticket_task.user_id }
    assert_redirected_to ticket_task_path(assigns(:ticket_task))
  end

  test "should destroy ticket_task" do
    assert_difference('TicketTask.count', -1) do
      delete :destroy, id: @ticket_task
    end

    assert_redirected_to ticket_tasks_path
  end
end
