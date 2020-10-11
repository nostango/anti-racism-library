require 'test_helper'

class NonLibraryPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact-us" do
    get non_library_pages_contact-us_url
    assert_response :success
  end

  test "should get suggest-resource" do
    get non_library_pages_suggest-resource_url
    assert_response :success
  end

  test "should get about-us" do
    get non_library_pages_about-us_url
    assert_response :success
  end

end
