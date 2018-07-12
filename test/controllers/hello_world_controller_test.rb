require_relative '../test_helper'

class HelloWorldControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get root_path
    assert_equal "/", path
  end
end
