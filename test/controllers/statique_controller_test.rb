require 'test_helper'

class StatiqueControllerTest < ActionDispatch::IntegrationTest
  def setup
    @baseTitle = "My Project"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Accueil | #{@baseTitle}"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | #{@baseTitle}"
  end

  test "should get service" do
    get service_url
    assert_response :success
    assert_select "title", "Service | #{@baseTitle}"
  end

  test "should get team" do
    get team_url
    assert_response :success
    assert_select "title", "Team | #{@baseTitle}"
  end

end
