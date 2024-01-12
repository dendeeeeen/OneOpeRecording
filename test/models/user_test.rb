require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(
      name: "でんちゅう",
      password: "foobar",
      password_confirmation: "foobar"
    )
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "name should not be too long Full-width" do
    @user.name = "あ" * 10
    assert @user.valid?
  end

  test "name should be too long Full-width" do
    @user.name = "あ" * 11
    assert_not @user.valid?
  end

  test "name should not be too long Half-width" do
    @user.name = "a" * 10
    assert @user.valid?
  end

  test "name should be too long Half-width" do
    @user.name = "a" * 11
    assert_not @user.valid?
  end

  test "name should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end
end
