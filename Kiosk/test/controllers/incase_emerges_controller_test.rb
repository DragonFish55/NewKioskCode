require "test_helper"

class IncaseEmergesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incase_emerge = incase_emerges(:one)
  end

  test "should get index" do
    get incase_emerges_url
    assert_response :success
  end

  test "should get new" do
    get new_incase_emerge_url
    assert_response :success
  end

  test "should create incase_emerge" do
    assert_difference('IncaseEmerge.count') do
      post incase_emerges_url, params: { incase_emerge: { user_id: @incase_emerge.user_id } }
    end

    assert_redirected_to incase_emerge_url(IncaseEmerge.last)
  end

  test "should show incase_emerge" do
    get incase_emerge_url(@incase_emerge)
    assert_response :success
  end

  test "should get edit" do
    get edit_incase_emerge_url(@incase_emerge)
    assert_response :success
  end

  test "should update incase_emerge" do
    patch incase_emerge_url(@incase_emerge), params: { incase_emerge: { user_id: @incase_emerge.user_id } }
    assert_redirected_to incase_emerge_url(@incase_emerge)
  end

  test "should destroy incase_emerge" do
    assert_difference('IncaseEmerge.count', -1) do
      delete incase_emerge_url(@incase_emerge)
    end

    assert_redirected_to incase_emerges_url
  end
end
