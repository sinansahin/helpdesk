require 'test_helper'

class TicketMessagesControllerTest < ActionController::TestCase
  setup do
    @ticket_message = ticket_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_message" do
    assert_difference('TicketMessage.count') do
      post :create, ticket_message: { content: @ticket_message.content, ticket_id: @ticket_message.ticket_id, user_id: @ticket_message.user_id }
    end

    assert_redirected_to ticket_message_path(assigns(:ticket_message))
  end

  test "should show ticket_message" do
    get :show, id: @ticket_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_message
    assert_response :success
  end

  test "should update ticket_message" do
    patch :update, id: @ticket_message, ticket_message: { content: @ticket_message.content, ticket_id: @ticket_message.ticket_id, user_id: @ticket_message.user_id }
    assert_redirected_to ticket_message_path(assigns(:ticket_message))
  end

  test "should destroy ticket_message" do
    assert_difference('TicketMessage.count', -1) do
      delete :destroy, id: @ticket_message
    end

    assert_redirected_to ticket_messages_path
  end
end
