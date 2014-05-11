require 'test_helper'

class AttachmentControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

end
