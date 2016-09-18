require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url, as: :json
    assert_response :success
  end

  test "should create video" do
    assert_difference('Video.count') do
      post videos_url, params: { video: { rtmp_url: @video.rtmp_url, streamable_id: @video.streamable_id, streamable_type: @video.streamable_type } }, as: :json
    end

    assert_response 201
  end

  test "should show video" do
    get video_url(@video), as: :json
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { rtmp_url: @video.rtmp_url, streamable_id: @video.streamable_id, streamable_type: @video.streamable_type } }, as: :json
    assert_response 200
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete video_url(@video), as: :json
    end

    assert_response 204
  end
end
