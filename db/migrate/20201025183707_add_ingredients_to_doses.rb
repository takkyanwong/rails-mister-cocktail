class AddIngredientsToDoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :doses, :ingredient, foreign_key: true
  end
end
