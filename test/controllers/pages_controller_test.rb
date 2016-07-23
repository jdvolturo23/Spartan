require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Spartan"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Spartan"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Spartan"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Spartan"
  end

  test "should get jobs" do
    get jobs_path
    assert_response :success
    assert_select "title", "Jobs | Spartan"
  end

  test "should get events" do
    get events_path
    assert_response :success
    assert_select "title", "Events | Spartan"
  end

  test "should get new_events" do
    get new_events_path
    assert_response :success
    assert_select "title", "New Events | Spartan"
  end

  test "should get featured_users" do
    get featured_users_path
    assert_response :success
    assert_select "title", "Featured Users | Spartan"
  end

  test "should get new_users" do
    get new_users_path
    assert_response :success
    assert_select "title", "New Users | Spartan"
  end

  test "should get career" do
    get career_path
    assert_response :success
    assert_select "title", "Career | Spartan"
  end

  test "should get faq" do
    get faq_path
    assert_response :success
    assert_select "title", "FAQ | Spartan"
  end

end
