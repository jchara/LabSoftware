require 'test_helper'

class ProducersControllerTest < ActionDispatch::IntegrationTest
  test "should get producers" do
    get producers_producers_url
    assert_response :success
  end

end
