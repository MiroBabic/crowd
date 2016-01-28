require 'test_helper'

class BiosControllerTest < ActionController::TestCase
  setup do
    @bio = bios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bio" do
    assert_difference('Bio.count') do
      post :create, bio: { aboutme: @bio.aboutme, city: @bio.city, contactemail: @bio.contactemail, fbprofile: @bio.fbprofile, gplusprofile: @bio.gplusprofile, name: @bio.name, personalweb: @bio.personalweb, phone: @bio.phone, picture: @bio.picture, street: @bio.street, twitterprofile: @bio.twitterprofile, user_id: @bio.user_id, zip: @bio.zip }
    end

    assert_redirected_to bio_path(assigns(:bio))
  end

  test "should show bio" do
    get :show, id: @bio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bio
    assert_response :success
  end

  test "should update bio" do
    patch :update, id: @bio, bio: { aboutme: @bio.aboutme, city: @bio.city, contactemail: @bio.contactemail, fbprofile: @bio.fbprofile, gplusprofile: @bio.gplusprofile, name: @bio.name, personalweb: @bio.personalweb, phone: @bio.phone, picture: @bio.picture, street: @bio.street, twitterprofile: @bio.twitterprofile, user_id: @bio.user_id, zip: @bio.zip }
    assert_redirected_to bio_path(assigns(:bio))
  end

  test "should destroy bio" do
    assert_difference('Bio.count', -1) do
      delete :destroy, id: @bio
    end

    assert_redirected_to bios_path
  end
end
