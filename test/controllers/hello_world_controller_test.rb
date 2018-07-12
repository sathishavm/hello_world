require_relative '../test_helper'

class HelloWorldControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/index"
    assert_equal "/index", path
  end
end
