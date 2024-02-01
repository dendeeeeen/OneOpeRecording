require "test_helper"

class ClearrecordTest < ActiveSupport::TestCase

  def setup
    @user = users(:itsuki)
    # このコードは慣習的に正しくない
    @clearrecord = Clearrecord.new(weapon_id: 1, stage_id: 1, user_id: @user.id)
  end

  test "should be valid" do
    assert @clearrecord.valid?
  end

  test "user id should be present" do
    @clearrecord.user_id = nil
    assert_not @clearrecord.valid?
  end
end
