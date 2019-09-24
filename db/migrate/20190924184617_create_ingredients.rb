class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :foodGroup
      t.float :protein
      t.float :fat
      t.float :carbohydrates
      t.integer :calories
      t.float :sugar
      t.integer :calcium
      t.integer :potassium
      t.integer :vitaminA
      t.float :vitaminC
      t.integer :folate
      t.string :img

      t.timestamps
    end
  end
end
