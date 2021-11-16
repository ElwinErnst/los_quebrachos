require "test_helper"

class PreviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preview = previews(:one)
  end

  test "should get index" do
    get previews_url
    assert_response :success
  end

  test "should get new" do
    get new_preview_url
    assert_response :success
  end

  test "should create preview" do
    assert_difference('Preview.count') do
      post previews_url, params: { preview: {  } }
    end

    assert_redirected_to preview_url(Preview.last)
  end

  test "should show preview" do
    get preview_url(@preview)
    assert_response :success
  end

  test "should get edit" do
    get edit_preview_url(@preview)
    assert_response :success
  end

  test "should update preview" do
    patch preview_url(@preview), params: { preview: {  } }
    assert_redirected_to preview_url(@preview)
  end

  test "should destroy preview" do
    assert_difference('Preview.count', -1) do
      delete preview_url(@preview)
    end

    assert_redirected_to previews_url
  end
end
