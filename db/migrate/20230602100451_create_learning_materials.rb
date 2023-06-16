class CreateLearningMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :learning_materials do |t|
      t.string :title
      t.string :difficulty
      t.string :image_url
      t.string :resource_url

      t.timestamps
    end
  end
end
