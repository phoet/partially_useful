require 'test_helper'

class PartiallyUsefulTest < ActionController::TestCase
  tests WelcomeController

  test "should get index" do
    get :index
    assert_match "<!-- start rendering 'header' with locals '[]'-->", @response.body
  end
end
