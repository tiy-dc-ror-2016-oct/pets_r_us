require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner = owners(:russell)
  end

  test "should get index" do
    get owners_url
    assert_response :success
  end

  test "should get new" do
    get new_owner_url
    assert_response :success
  end

  test "should create owner" do
    assert_difference('Owner.count') do
      post owners_url, params: { owner: { balance_in_cents: @owner.balance_in_cents, blood_type: @owner.blood_type, email: @owner.email, full_name: @owner.full_name, phone_number: @owner.phone_number, ssn: @owner.ssn } }
    end

    assert_redirected_to owner_url(Owner.last)
  end

  test "should show owner" do
    get owner_url(@owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_owner_url(@owner)
    assert_response :success
  end

  test "should update owner" do
    patch owner_url(@owner), params: { owner: { balance_in_cents: @owner.balance_in_cents, blood_type: @owner.blood_type, email: @owner.email, full_name: @owner.full_name, phone_number: @owner.phone_number, ssn: @owner.ssn } }
    assert_redirected_to owner_url(@owner)
  end

  test "should destroy owner" do
    assert_difference('Owner.count', -1) do
      delete owner_url(@owner)
    end

    assert_redirected_to owners_url
  end
end
