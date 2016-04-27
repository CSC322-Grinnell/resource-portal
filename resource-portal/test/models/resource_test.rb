require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true

  test "should not save blank resource" do
    blank_resource = Resource.new
    assert_not blank_resource.save, "Saved a blank resource"
  end

  test "should require name" do
    @chuong_garden.name = ""
    assert_not @chuong_garden.save, "Saved a resource without a name"
  end

  test "should require description of service" do
    @chuong_garden.description_of_service = ""
    assert_not @chuong_garden.save, "Saved a resource without a description_of_service"
  end

  test "should require address" do
    @chuong_garden.address = ""
    assert_not @chuong_garden.save, "Saved a resource without a address"
  end

  test "should require contact email" do
    @chuong_garden.contact_email = ""
    assert_not @chuong_garden.save, "Saved a resource without an email"
  end

  test "should require at least one category" do
    @chuong_garden.categories = []
    assert_not @chuong_garden.save, "Saved a resource without any categories"
  end

end
