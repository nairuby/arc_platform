require "test_helper"

class LearningMaterialsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get learning_materials_path
    assert_response :success
    assert_not_nil assigns(:learning_materials)
  end

  test "should get new" do
    get new_learning_material_path
    assert_response :success
    assert_not_nil assigns(:learning_material)
  end

  test "should create learning_material" do
    assert_difference('LearningMaterial.count') do
      post learning_materials_path, learning_material: { title: "Test Learning Material", difficulty: 1, image_url: "https://example.com/image.png", resource_url: "https://example.com/resource.pdf" }
    end
    assert_redirected_to learning_material_path(assigns(:learning_material))
    assert_equal "Learning material was successfully created.", flash[:notice]
  end

  test "should not create learning_material with invalid params" do
    post learning_materials_path, learning_material: { title: nil }
    assert_response :unprocessable_entity
    assert_not_nil assigns(:learning_material)
    assert_equal "Title can't be blank", assigns(:learning_material).errors[:title].first
  end

  test "should show learning_material" do
    learning_material = LearningMaterial.create!(title: "Test Learning Material", difficulty: 1, image_url: "https://example.com/image.png", resource_url: "https://example.com/resource.pdf")
    get learning_material_path(learning_material)
    assert_response :success
    assert_equal learning_material, assigns(:learning_material)
  end

  test "should get edit" do
    learning_material = LearningMaterial.create!(title: "Test Learning Material", difficulty: 1, image_url: "https://example.com/image.png", resource_url: "https://example.com/resource.pdf")
    get edit_learning_material_path(learning_material)
    assert_response :success
    assert_equal learning_material, assigns(:learning_material)
  end

  test "should update learning_material" do
    learning_material = LearningMaterial.create!(title: "Test Learning Material", difficulty: 1, image_url: "https://example.com/image.png", resource_url: "https://example.com/resource.pdf")
    patch learning_material_path(learning_material), learning_material: { title: "New Title" }
    assert_redirected_to learning_material_path(learning_material)
    assert_equal "Learning material was successfully updated.", flash[:notice]
  end

  test "should not update learning_material with invalid params" do
    learning_material = LearningMaterial.create!(title: "Test Learning Material", difficulty: 1, image_url: "https://example.com/image.png", resource_url: "https://example.com/resource.pdf")
    patch learning_material_path(learning_material), learning_material: { title: nil }
    assert_response :unprocessable_entity
    assert_equal learning_material, assigns(:learning_material)
    assert_equal "Title can't be blank", assigns(:learning_material).errors[:title].first
  end

  test "should destroy learning_material" do
    learning_material = LearningMaterial.create!(title: "Test Learning Material", difficulty: 1, image_url: "https://example.com/image.png", resource_url: "https://example.com/resource.pdf")
    delete learning_material_path(learning_material)
    assert_redirected_to learning_materials_path
    assert_not_nil LearningMaterial.find_by(id: learning_material.id)
  end

end
