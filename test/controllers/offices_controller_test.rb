require 'test_helper'

class OfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @office = offices(:one)
  end

  test "should get index" do
    get offices_url, as: :json
    assert_response :success
  end

  test "should create office" do
    assert_difference('Office.count') do
      post offices_url, params: { office: { city: @office.city, clinician_id: @office.clinician_id, cpt_code_id: @office.cpt_code_id, name: @office.name, phone: @office.phone, state: @office.state, street: @office.street, zip: @office.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show office" do
    get office_url(@office), as: :json
    assert_response :success
  end

  test "should update office" do
    patch office_url(@office), params: { office: { city: @office.city, clinician_id: @office.clinician_id, cpt_code_id: @office.cpt_code_id, name: @office.name, phone: @office.phone, state: @office.state, street: @office.street, zip: @office.zip } }, as: :json
    assert_response 200
  end

  test "should destroy office" do
    assert_difference('Office.count', -1) do
      delete office_url(@office), as: :json
    end

    assert_response 204
  end
end
