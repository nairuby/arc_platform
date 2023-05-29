# frozen_string_literal: true

require 'test_helper'

class CountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country = countries(:one)
    @user = users(:organization_admin) # Create and organization_admin user
    @user.confirm
    sign_in(@user) # Sign in user
  end

  test 'should get index' do
    get countries_url
    assert_response :success
  end

  test 'should show country' do
    get country_url(@country)
    assert_response :success
  end
end
