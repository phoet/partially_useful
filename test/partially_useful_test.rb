require 'test_helper'

class PartiallyUsefulTest < ActionController::TestCase
  tests WelcomeController

  test "rendering the index template for html adds partial rendering comments to the source" do
    get :index

    assert_match "<!-- start rendering 'header' with locals '[]'-->", @response.body
    assert_match "<h1>Hellooooo</h1>", @response.body
  end

  test "calling the json endpoint does nothing" do
    get :index, format: :json

    assert_equal "{}", @response.body
  end

  test "calling the xml endpoint does not include any rendering comments" do
    get :index, format: :xml

    xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<welcome>SOME TEXT</welcome>"
    assert_equal xml, @response.body
  end
end
