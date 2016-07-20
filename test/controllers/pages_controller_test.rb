require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get help" do
    get pages_help_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get jobs" do
    get pages_jobs_url
    assert_response :success
  end

  test "should get events" do
    get pages_events_url
    assert_response :success
  end

  test "should get new_events" do
    get pages_new_events_url
    assert_response :success
  end

  test "should get featured_users" do
    get pages_featured_users_url
    assert_response :success
  end

  test "should get new_users" do
    get pages_new_users_url
    assert_response :success
  end

  test "should get career" do
    get pages_career_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

end
