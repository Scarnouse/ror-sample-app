require 'test_helper'

class SongCreditsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get song_credits_index_url
    assert_response :success
  end

  test "should get show" do
    get song_credits_show_url
    assert_response :success
  end

  test "should get new" do
    get song_credits_new_url
    assert_response :success
  end

  test "should get create" do
    get song_credits_create_url
    assert_response :success
  end

  test "should get edit" do
    get song_credits_edit_url
    assert_response :success
  end

  test "should get update" do
    get song_credits_update_url
    assert_response :success
  end

  test "should get destroy" do
    get song_credits_destroy_url
    assert_response :success
  end

end
