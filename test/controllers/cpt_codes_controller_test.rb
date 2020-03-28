require 'test_helper'

class CptCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpt_code = cpt_codes(:one)
  end

  test "should get index" do
    get cpt_codes_url, as: :json
    assert_response :success
  end

  test "should create cpt_code" do
    assert_difference('CptCode.count') do
      post cpt_codes_url, params: { cpt_code: { call_to_book: @cpt_code.call_to_book, clinician_id: @cpt_code.clinician_id, description: @cpt_code.description, duration: @cpt_code.duration, rate: @cpt_code.rate } }, as: :json
    end

    assert_response 201
  end

  test "should show cpt_code" do
    get cpt_code_url(@cpt_code), as: :json
    assert_response :success
  end

  test "should update cpt_code" do
    patch cpt_code_url(@cpt_code), params: { cpt_code: { call_to_book: @cpt_code.call_to_book, clinician_id: @cpt_code.clinician_id, description: @cpt_code.description, duration: @cpt_code.duration, rate: @cpt_code.rate } }, as: :json
    assert_response 200
  end

  test "should destroy cpt_code" do
    assert_difference('CptCode.count', -1) do
      delete cpt_code_url(@cpt_code), as: :json
    end

    assert_response 204
  end
end
