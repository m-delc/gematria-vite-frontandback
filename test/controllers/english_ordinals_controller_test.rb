require "test_helper"

class EnglishOrdinalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @english_ordinal = english_ordinals(:one)
  end

  test "should get index" do
    get english_ordinals_url, as: :json
    assert_response :success
  end

  test "should create english_ordinal" do
    assert_difference("EnglishOrdinal.count") do
      post english_ordinals_url, params: { english_ordinal: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show english_ordinal" do
    get english_ordinal_url(@english_ordinal), as: :json
    assert_response :success
  end

  test "should update english_ordinal" do
    patch english_ordinal_url(@english_ordinal), params: { english_ordinal: {  } }, as: :json
    assert_response :success
  end

  test "should destroy english_ordinal" do
    assert_difference("EnglishOrdinal.count", -1) do
      delete english_ordinal_url(@english_ordinal), as: :json
    end

    assert_response :no_content
  end
end
