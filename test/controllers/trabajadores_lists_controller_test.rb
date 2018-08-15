require 'test_helper'

class TrabajadoresListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajadores_list = trabajadores_lists(:one)
  end

  test "should get index" do
    get trabajadores_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_trabajadores_list_url
    assert_response :success
  end

  test "should create trabajadores_list" do
    assert_difference('TrabajadoresList.count') do
      post trabajadores_lists_url, params: { trabajadores_list: { Apellidos: @trabajadores_list.Apellidos, Nombres: @trabajadores_list.Nombres } }
    end

    assert_redirected_to trabajadores_list_url(TrabajadoresList.last)
  end

  test "should show trabajadores_list" do
    get trabajadores_list_url(@trabajadores_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabajadores_list_url(@trabajadores_list)
    assert_response :success
  end

  test "should update trabajadores_list" do
    patch trabajadores_list_url(@trabajadores_list), params: { trabajadores_list: { Apellidos: @trabajadores_list.Apellidos, Nombres: @trabajadores_list.Nombres } }
    assert_redirected_to trabajadores_list_url(@trabajadores_list)
  end

  test "should destroy trabajadores_list" do
    assert_difference('TrabajadoresList.count', -1) do
      delete trabajadores_list_url(@trabajadores_list)
    end

    assert_redirected_to trabajadores_lists_url
  end
end
