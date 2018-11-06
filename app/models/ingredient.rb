class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  class Song < ActiveRecord::Base
    def ingredient_attributes=(ingredient)
      self.ingredient = Ingredient.find_or_create_by(name: ingredient.name)
      self.ingredient.update(ingredient)
    end
  end
  
  
end
