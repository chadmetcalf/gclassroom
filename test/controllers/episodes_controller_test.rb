require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @episode = episodes(:one)
  end

  test "should get index" do
    get episodes_url, headers: { 'Accept' => JSONAPI::MEDIA_TYPE }
    assert_response :success
  end

  test "should create episode" do
    assert_difference('Episode.count') do
      post episodes_url, params: { episode: { aired_on: @episode.aired_on, directed_by: @episode.directed_by, episode_number: @episode.episode_number, season_number: @episode.season_number, show: @episode.show, subtitle: @episode.subtitle, title: @episode.title, written_by: @episode.written_by } }, as: :json
    end

    assert_response 201
  end

  test "should show episode" do
    get episode_url(@episode), as: :json
    assert_response :success
  end

  test "should update episode" do
    patch episode_url(@episode),
          params: { episode: { aired_on: @episode.aired_on, directed_by: @episode.directed_by, episode_number: @episode.episode_number, season_number: @episode.season_number, show: @episode.show, subtitle: @episode.subtitle, title: @episode.title, written_by: @episode.written_by } }, as: :json
    assert_response 200
  end

  test "should destroy episode" do
    assert_difference('Episode.count', -1) do
      delete episode_url(@episode), as: :json
    end

    assert_response 204
  end
end
