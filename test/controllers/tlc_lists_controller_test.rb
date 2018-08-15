require 'test_helper'

class TlcListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tlc_list = tlc_lists(:one)
  end

  test "should get index" do
    get tlc_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_tlc_list_url
    assert_response :success
  end

  test "should create tlc_list" do
    assert_difference('TlcList.count') do
      post tlc_lists_url, params: { tlc_list: { description: @tlc_list.description, title: @tlc_list.title } }
    end

    assert_redirected_to tlc_list_url(TlcList.last)
  end

  test "should show tlc_list" do
    get tlc_list_url(@tlc_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_tlc_list_url(@tlc_list)
    assert_response :success
  end

  test "should update tlc_list" do
    patch tlc_list_url(@tlc_list), params: { tlc_list: { description: @tlc_list.description, title: @tlc_list.title } }
    assert_redirected_to tlc_list_url(@tlc_list)
  end

  test "should destroy tlc_list" do
    assert_difference('TlcList.count', -1) do
      delete tlc_list_url(@tlc_list)
    end

    assert_redirected_to tlc_lists_url
  end
end
