require 'test_helper'

class TlcpRuebaListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tlcp_rueba_list = tlcp_rueba_lists(:one)
  end

  test "should get index" do
    get tlcp_rueba_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_tlcp_rueba_list_url
    assert_response :success
  end

  test "should create tlcp_rueba_list" do
    assert_difference('TlcpRuebaList.count') do
      post tlcp_rueba_lists_url, params: { tlcp_rueba_list: { description: @tlcp_rueba_list.description, title: @tlcp_rueba_list.title } }
    end

    assert_redirected_to tlcp_rueba_list_url(TlcpRuebaList.last)
  end

  test "should show tlcp_rueba_list" do
    get tlcp_rueba_list_url(@tlcp_rueba_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_tlcp_rueba_list_url(@tlcp_rueba_list)
    assert_response :success
  end

  test "should update tlcp_rueba_list" do
    patch tlcp_rueba_list_url(@tlcp_rueba_list), params: { tlcp_rueba_list: { description: @tlcp_rueba_list.description, title: @tlcp_rueba_list.title } }
    assert_redirected_to tlcp_rueba_list_url(@tlcp_rueba_list)
  end

  test "should destroy tlcp_rueba_list" do
    assert_difference('TlcpRuebaList.count', -1) do
      delete tlcp_rueba_list_url(@tlcp_rueba_list)
    end

    assert_redirected_to tlcp_rueba_lists_url
  end
end
