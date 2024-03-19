require "test_helper"

class ReportCardControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get report_card_generate_url
    assert_response :success
  end
end
