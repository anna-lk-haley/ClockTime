require 'test_helper'

class TimelogControllerTest < ActionDispatch::IntegrationTest
  test "should get record" do
    get timelog_record_url
    assert_response :success
  end

end
