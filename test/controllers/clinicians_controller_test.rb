require 'test_helper'

class CliniciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinician = clinicians(:one)
  end

  test "should get index" do
    get clinicians_url, as: :json
    assert_response :success
  end

  test "should create clinician" do
    assert_difference('Clinician.count') do
      post clinicians_url, params: { clinician: { Suffix: @clinician.Suffix, first_name: @clinician.first_name, last_name: @clinician.last_name, middle_name: @clinician.middle_name, phone: @clinician.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show clinician" do
    get clinician_url(@clinician), as: :json
    assert_response :success
  end

  test "should update clinician" do
    patch clinician_url(@clinician), params: { clinician: { Suffix: @clinician.Suffix, first_name: @clinician.first_name, last_name: @clinician.last_name, middle_name: @clinician.middle_name, phone: @clinician.phone } }, as: :json
    assert_response 200
  end

  test "should destroy clinician" do
    assert_difference('Clinician.count', -1) do
      delete clinician_url(@clinician), as: :json
    end

    assert_response 204
  end
end
