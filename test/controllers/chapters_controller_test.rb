require "test_helper"

class ChaptersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chapter = chapters(:one)
    @country = countries(:one)
  end

  test "should get index" do
    get chapters_url
    assert_response :success
  end

  test "should show chapter" do
    get chapter_url(@chapter)
    assert_response :success
  end
end
