class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :serving
      t.float :calories
      t.float :fat
      t.float :protein
      t.float :carbohydrates

      t.timestamps
    end
  end
end
