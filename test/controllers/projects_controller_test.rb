# frozen_string_literal: true

require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)

    @user = users(:organization_admin) # Create and organization_admin user
    @user.confirm
    sign_in(@user) # Sign in user
  end

  test 'should get index' do
    get projects_url
    assert_response :success
  end

  test 'should show project' do
    get project_url(@project)
    assert_response :success
  end
end
