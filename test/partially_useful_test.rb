require 'test_helper'

class PartiallyUsefulTest < ActionController::TestCase
  tests WelcomeController

  test "should get index" do
    get :index
    assert_match "<!-- start rendering 'header' with locals '[]'-->", @response.body
    assert_match "<h1>Hellooooo</h1>", @response.body
  end
end
