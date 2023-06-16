class LearningMaterialsController < ApplicationController
  def index
    @learning_materials = LearningMaterial.all
  end

  def new
    @learning_material = LearningMaterial.new
  end

  def create
    @learning_material = LearningMaterial.new(learning_material_params)

    if @learning_material.valid?
      if @learning_material.image_url.present?
        @learning_material.image_from_url(@learning_material.image_url)
      end

      if @learning_material.save
        redirect_to learning_material_path(@learning_material), notice: 'Learning material was successfully created.'
      else
        render :new
      end
    else
      render :new
    end
  end

  def show
    @learning_material = LearningMaterial.find(params[:id])
  end

  def edit
    @learning_material = LearningMaterial.find(params[:id])
  end

  def update
    @learning_material = LearningMaterial.find(params[:id])

    if @learning_material.update(learning_material_params)
      redirect_to learning_material_path(@learning_material), notice: 'Learning material was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @learning_material = LearningMaterial.find(params[:id])
    @learning_material.destroy

    redirect_to learning_materials_path, notice: 'Learning material was successfully destroyed.'
  end

  private

  def learning_material_params
    params.require(:learning_material).permit(:title, :difficulty, :image, :image_url, :resource_url)
  end
end
