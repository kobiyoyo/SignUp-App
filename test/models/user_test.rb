require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "example@user.com")
  end
  test "this should be valid" do
    assert @user.valid?
  end

  test "this should test for empty name" do
    @user.name = " "
    assert_not @user.valid?
  end

  test 'this should test for empty email' do
    @user.email = " "
    assert_not @user.valid?
  end

  test 'name should not be long' do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  test '' do
    @user.email = "a" * 244 + "@gmail.com"
  end
end 

