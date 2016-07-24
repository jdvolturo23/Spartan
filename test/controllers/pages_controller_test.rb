require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Spartan"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get jobs" do
    get jobs_path
    assert_response :success
    assert_select "title", "Jobs | #{@base_title}"
  end

  test "should get events" do
    get events_path
    assert_response :success
    assert_select "title", "Events | #{@base_title}"
  end

  test "should get new_events" do
    get new_events_path
    assert_response :success
    assert_select "title", "New Events | #{@base_title}"
  end

  test "should get featured_users" do
    get featured_users_path
    assert_response :success
    assert_select "title", "Featured Users | #{@base_title}"
  end

  test "should get new_users" do
    get new_users_path
    assert_response :success
    assert_select "title", "New Users | #{@base_title}"
  end

  test "should get career" do
    get career_path
    assert_response :success
    assert_select "title", "Career | #{@base_title}"
  end

  test "should get faq" do
    get faq_path
    assert_response :success
    assert_select "title", "FAQ | #{@base_title}"
  end

end
