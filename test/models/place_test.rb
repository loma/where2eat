require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  test "should not save place without name and location" do
    place = Place.new
    assert_not place.save
  end

  test "should fail" do
    fail
  end
end
