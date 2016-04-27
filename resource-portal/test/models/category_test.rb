require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true

  test "should require name" do
    @employment.name = ""
    assert_not @employment.save, "Saved a category without a name"
  end

end
