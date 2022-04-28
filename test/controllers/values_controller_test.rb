require "test_helper"

class ValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @value = values(:one)
  end

  test "should get index" do
    get values_url, as: :json
    assert_response :success
  end

  test "should create value" do
    assert_difference("Value.count") do
      post values_url, params: { value: { alphabet_id: @value.alphabet_id } }, as: :json
    end

    assert_response :created
  end

  test "should show value" do
    get value_url(@value), as: :json
    assert_response :success
  end

  test "should update value" do
    patch value_url(@value), params: { value: { alphabet_id: @value.alphabet_id } }, as: :json
    assert_response :success
  end

  test "should destroy value" do
    assert_difference("Value.count", -1) do
      delete value_url(@value), as: :json
    end

    assert_response :no_content
  end
end
