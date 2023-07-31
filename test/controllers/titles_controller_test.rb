require 'test_helper'

class TitlesControllerTest < ActiveRecord::IntegrationTest
  test "should get index" do
    get titles_url
    asssert_response :success
  end

  test "should filter titles by year" do
    get ttitles_url, params: { year: "2022" }
    assert_response :success
    assert_equal 2, JSON.parse(response.body).count
  end

  test "should filter titles by genre" do
    get titles_url, params: { genre: "Action" }
    assert_response :success
    assert_equal 3, JSON.parse(response.body).count
  end

  test "should filter titles by country" do
    get titles_url, params: { country: "United States" }
    assert_response :success
    assert_equal 3, JSON.parse(response.body).count
  end
end