require 'test_helper'

class LineIntemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_intem = line_intems(:one)
  end

  test "should get index" do
    get line_intems_url
    assert_response :success
  end

  test "should get new" do
    get new_line_intem_url
    assert_response :success
  end

  test "should create line_intem" do
    assert_difference('LineIntem.count') do
      post line_intems_url, params: { line_intem: { cart_id: @line_intem.cart_id, product_id: @line_intem.product_id } }
    end

    assert_redirected_to line_intem_url(LineIntem.last)
  end

  test "should show line_intem" do
    get line_intem_url(@line_intem)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_intem_url(@line_intem)
    assert_response :success
  end

  test "should update line_intem" do
    patch line_intem_url(@line_intem), params: { line_intem: { cart_id: @line_intem.cart_id, product_id: @line_intem.product_id } }
    assert_redirected_to line_intem_url(@line_intem)
  end

  test "should destroy line_intem" do
    assert_difference('LineIntem.count', -1) do
      delete line_intem_url(@line_intem)
    end

    assert_redirected_to line_intems_url
  end
end
