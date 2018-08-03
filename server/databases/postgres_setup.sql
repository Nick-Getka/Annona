CREATE TABLE Users(
  user_id SERIAL PRIMARY KEY NOT NULL,
  user_password VARCHAR NOT NULL
);

CREATE TABLE Recipes(
  recipe_id SERIAL PRIMARY KEY NOT NULL,
  user_id SERIAL NOT NULL,
  recipe_name VARCHAR NOT NULL,

  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Ingredients(
  ingredient_id SERIAL PRIMARY KEY NOT NULL ,
  ingredient_name VARCHAR NOT NULL
);

CREATE TABLE Recipe_Ingredient_Assoc(
  recipe_id SERIAL NOT NULL,
  ingredient_id SERIAL NOT NULL,
  amount INTEGER,
  measure VARCHAR,

  PRIMARY KEY (recipe_id, ingredient_id),
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id) ON DELETE CASCADE,
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id) ON DELETE CASCADE
);

