INSERT INTO account VALUES
('omarkhalili810@gmail.com', 'OmarAnKh', 'Passionate about cooking and baking.', 'omarkhalili810.png', 'Rafedya', 'password123', TO_DATE('2004-02-02', 'YYYY-MM-DD'), 'admin');

INSERT INTO account VALUES
('amjadawwad129@gmail.com', 'Amjad',NULL, 'amjadawwad129.png', 'al-masakin', 'securepass', TO_DATE('2004-06-10', 'YYYY-MM-DD'), 'admin');

INSERT INTO account VALUES
('admin1@admin.com', 'AdminOne', 'Administrator with a love for culinary arts.', NULL, '789 Pine Road, Villagetown', 'adminpass', TO_DATE('1980-12-05', 'YYYY-MM-DD'), 'admin');

INSERT INTO account VALUES
('rahafhazr@icloud.com', 'Rahaf Hazr', NULL, 'rahafhazr.png', 'Rafedya', 'mypassword', TO_DATE('2004-07-01', 'YYYY-MM-DD'), 'admin');

INSERT INTO account VALUES
('nouralhudakilany@gmail.com', 'Nouralhuda Kilany', 'Experienced chef and cooking instructor.', 'nouralhudakilany.png', 'Tubas', 'adminadminpass', TO_DATE('2004-01-18', 'YYYY-MM-DD'), 'admin');


INSERT INTO account VALUES
('ayah@email.com', 'Ayah', 'I enjoy baking and yoga.', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', 'Jerusalem', 'password5', TO_DATE('2009-05-05', 'YYYY-MM-DD'), 'user');



INSERT INTO account (email, username, bio, profile_picture, address, Apassword, date_of_birth, account_type)
VALUES ('najwa@email.com', 'Najwa', 'I love dancing and cooking', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', 'Nazareth', 'password8', TO_DATE('1996-08-08', 'YYYY-MM-DD'), 'user');



INSERT INTO account (email, username, bio, profile_picture, address, Apassword, date_of_birth, account_type)
VALUES ('saleh@email.com', 'Saleh', 'I enjoy music and playing guitar', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', 'Tel Aviv', 'password7', TO_DATE('1994-07-07', 'YYYY-MM-DD'), 'user');



INSERT INTO account (email, username, bio, profile_picture, address, Apassword, date_of_birth, account_type)
VALUES ('mahmoud@email.com', 'Mahmoud', 'I love playing football and reading', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', 'Haifa', 'password6', TO_DATE('1992-06-06', 'YYYY-MM-DD'), 'user');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO follow (email, follower_email) VALUES ('rahafhazr@icloud.com', 'mahmoud@email.com');


INSERT INTO follow (email, follower_email) VALUES ('saleh@email.com', 'omarkhalili810@gmail.com');


INSERT INTO follow (email, follower_email) VALUES ('amjadawwad129@gmail.com', 'nouralhudakilany@gmail.com');


INSERT INTO follow (email, follower_email) VALUES ('omarkhalili810@gmail.com', 'amjadawwad129@gmail.com');


INSERT INTO follow (email, follower_email) VALUES ('admin1@admin.com', 'rahafhazr@icloud.com');


INSERT INTO follow (email, follower_email) VALUES ('nouralhudakilany@gmail.com', 'najwa@email.com');


INSERT INTO follow (email, follower_email) VALUES ('saleh@email.com', 'mahmoud@email.com');


INSERT INTO follow (email, follower_email) VALUES ('mahmoud@email.com', 'amjadawwad129@gmail.com');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO recipe VALUES
('1', '30 minutes', 2, '1 hour', 'Dessert', 8, 'recipe1_picture.jpg', 'Chocolate Cake', 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), SYSTIMESTAMP, 'amjadawwad129@gmail.com', 'rahafhazr@icloud.com');

INSERT INTO recipe VALUES
('2', '45 minutes', 3, '2 hours', 'Main Dish', 4, 'recipe2_picture.jpg', 'Mashed potato', 1, TO_DATE('2023-02-01', 'YYYY-MM-DD'), SYSTIMESTAMP, 'rahafhazr@icloud.com', 'amjadawwad129@gmail.com');

INSERT INTO recipe VALUES
('3', '20 minutes', 1, '30 minutes', 'Lunch', 6, 'recipe3_picture.jpg', 'Spaghetti', 1, TO_DATE('2023-02-10', 'YYYY-MM-DD'), SYSTIMESTAMP, 'rahafhazr@icloud.com', 'nouralhudakilany@gmail.com');

INSERT INTO recipe VALUES
('4', '15 minutes', 2, '45 minutes', 'Lunch', 2, 'recipe4_picture.jpg', 'Shrimp soup', 1, TO_DATE('2023-03-05', 'YYYY-MM-DD'), SYSTIMESTAMP, 'omarkhalili810@gmail.com', 'rahafhazr@icloud.com');

INSERT INTO recipe VALUES
('5', '60 minutes', 4, '3 hours', 'Dinner', 6, 'recipe5_picture.jpg', 'Beef Stroganoff', 1, TO_DATE('2023-03-20', 'YYYY-MM-DD'), SYSTIMESTAMP, 'omarkhalili810@gmail.com', 'amjadawwad129@gmail.com');


INSERT INTO recipe (recipe_id, preparation_time, difficulty_level, estimated_time, recipy_category, number_of_servings, picture, recipe_name, recipe_state, publication_date, approve_time, user_email, admin_email) 
VALUES ('6', '15 mins', 2, '30 mins', 'soup', 4, 'soup.jpg', 'Vegetable Soup', 1, TO_DATE('2023-12-14', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'ayah@email.com', 'nouralhudakilany@gmail.com');



INSERT INTO recipe (recipe_id, preparation_time, difficulty_level, estimated_time, recipy_category, number_of_servings, picture, recipe_name, recipe_state, publication_date, approve_time, user_email, admin_email) 
VALUES ('7', '30 mins', 3, '20 mins', 'italian', 3, 'pizza.jpg', 'Margherita Pizza', 1, TO_DATE('2023-12-12', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'saleh@email.com', 'omarkhalili810@gmail.com');



INSERT INTO recipe (recipe_id, preparation_time, difficulty_level, estimated_time, recipy_category, number_of_servings, picture, recipe_name, recipe_state, publication_date, approve_time, user_email, admin_email) 
VALUES ('8', '15 mins', 1, '20 mins', 'breakfast', 1, 'smoothie_bowl.jpg', 'Acai Bowl', 1, TO_DATE('2023-12-11', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'najwa@email.com', 'rahafhazr@icloud.com');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO ingredient VALUES
('1', 'Milk.jpg', 50, 'Dairy', 5, 'Milk', 100, 1, SYSTIMESTAMP, 'omarkhalili810@gmail.com', 'omarkhalili810@gmail.com');

INSERT INTO ingredient VALUES
('2', 'Carrot.jpg', 30, 'Vegetable', 2, 'Carrot', 50, 1, SYSTIMESTAMP, 'amjadawwad129@gmail.com', 'amjadawwad129@gmail.com');

INSERT INTO ingredient VALUES
('3', 'Rice.jpg', 40, 'Grain', 8, 'Rice', 120, 1, SYSTIMESTAMP, 'admin1@admin.com', 'rahafhazr@icloud.com');

INSERT INTO ingredient VALUES
('4', 'Chicken_Breast.jpg', 20, 'Protein', 15, 'Chicken Breast', 200, 1, SYSTIMESTAMP, 'rahafhazr@icloud.com', 'rahafhazr@icloud.com');

INSERT INTO ingredient VALUES
('5', 'Apple.jpg', 10, 'Fruit', 1, 'Apple', 30, 1, SYSTIMESTAMP, 'nouralhudakilany@gmail.com', 'nouralhudakilany@gmail.com');

INSERT INTO ingredient VALUES
('6', 'Egg.jpg', 10, 'poultry products', 1, 'Egg', 30, 1, SYSTIMESTAMP, NULL, NULL);

INSERT INTO ingredient VALUES
('7', 'flour.jpg', 10, 'gluten', 1, 'flour', 30, 1, SYSTIMESTAMP, NULL, NULL);



INSERT INTO ingredient 
VALUES ('8', 'VegetableOil.jpg', 30, 'Oils', 8, 'Vegetable Oil', 120, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient 
VALUES ('9', 'Sugar.jpg', 100, 'Sweeteners', 3, 'Sugar', 50, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient 
VALUES ('10', 'Pepper.jpg', 20, 'Spices', 4, 'Pepper', 5, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient 
VALUES ('11', 'OliveOil.jpg', 40, 'Oils', 12, 'Olive Oil', 150, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient 
VALUES ('12', 'GranulatedSugar.jpg', 80, 'Sweeteners', 4, 'Granulated Sugar', 60, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient
VALUES ('13', 'ChickenStock.jpg', 60, 'Stocks', 6, 'Chicken Stock', 30, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient
VALUES ('14', 'BeefStock.jpg', 70, 'Stocks', 7, 'Beef Stock', 35, 1, SYSTIMESTAMP, NULL, NULL);


INSERT INTO ingredient 
VALUES ('15', 'Tomatoes.jpg', 90, 'Produce', 2, 'Tomatoes', 25, 1, SYSTIMESTAMP, NULL, NULL);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO has_a VALUES ('1', '1', '2');
INSERT INTO has_a VALUES ('1', '2', '3');
INSERT INTO has_a VALUES ('1', '3', '1');
INSERT INTO has_a VALUES ('2', '4', '2');
INSERT INTO has_a VALUES ('2', '5', '4');
INSERT INTO has_a VALUES ('3', '6', '1');
INSERT INTO has_a VALUES ('3', '7', '1');
INSERT INTO has_a VALUES ('4', '8', '2');
INSERT INTO has_a VALUES ('4', '9', '3');
INSERT INTO has_a VALUES ('5', '10', '4');


INSERT INTO has_a VALUES ('6', '11', '2');
INSERT INTO has_a VALUES ('6', '12', '3');
INSERT INTO has_a VALUES ('7', '13', '1');
INSERT INTO has_a VALUES ('7', '14', '1');
INSERT INTO has_a VALUES ('8', '15', '2');
INSERT INTO has_a VALUES ('8', '1', '3');
INSERT INTO has_a VALUES ('2', '2', '4');
INSERT INTO has_a VALUES ('2', '3', '2');
INSERT INTO has_a VALUES ('1', '4', '1');
INSERT INTO has_a VALUES ('1', '5', '4');


INSERT INTO has_a VALUES ('1', '6', '2');
INSERT INTO has_a VALUES ('1', '7', '3');
INSERT INTO has_a VALUES ('2', '8', '1');
INSERT INTO has_a VALUES ('2', '9', '1');
INSERT INTO has_a VALUES ('3', '10', '2');
INSERT INTO has_a VALUES ('3', '11', '3');
INSERT INTO has_a VALUES ('4', '12', '4');
INSERT INTO has_a VALUES ('4', '13', '2');
INSERT INTO has_a VALUES ('5', '14', '1');
INSERT INTO has_a VALUES ('5', '15', '4');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO instruction VALUES ('1', 'Preheat the oven to 350 degrees.', 1);
INSERT INTO instruction VALUES ('1', 'In a large mixing bowl, combine flour, sugar, and cocoa powder.', 2);
INSERT INTO instruction VALUES ('1', 'Add eggs, milk, and vanilla extract. Mix well.', 3);
INSERT INTO instruction VALUES ('1', 'Pour the batter into a greased cake pan.', 4);
INSERT INTO instruction VALUES ('1', 'Bake in the preheated oven for 30 minutes.', 5);


INSERT INTO instruction VALUES ('2', 'Boil and mash potatoes until smooth.', 1);
INSERT INTO instruction VALUES ('2', 'Add butter, milk, and salt to the mashed potatoes.', 2);
INSERT INTO instruction VALUES ('2', 'Mix until creamy and well combined.', 3);
INSERT INTO instruction VALUES ('2', 'Serve hot with your favorite toppings.', 4);


INSERT INTO instruction VALUES ('3', 'Cook spaghetti according to package instructions.', 1);
INSERT INTO instruction VALUES ('3', 'Prepare the Bolognese sauce with ground beef and tomatoes.', 2);
INSERT INTO instruction VALUES ('3', 'Combine cooked spaghetti with the sauce.', 3);
INSERT INTO instruction VALUES ('3', 'Garnish with grated Parmesan cheese.', 4);


INSERT INTO instruction VALUES ('4', 'Peel and devein shrimp.', 1);
INSERT INTO instruction VALUES ('4', 'Prepare a flavorful broth for the shrimp soup.', 2);
INSERT INTO instruction VALUES ('4', 'Add shrimp and simmer until cooked.', 3);
INSERT INTO instruction VALUES ('4', 'Serve hot with crusty bread.', 4);


INSERT INTO instruction VALUES ('5', 'Slice the beef into thin strips and season with salt and pepper.', 1);
INSERT INTO instruction VALUES ('5', 'In a large skillet, heat olive oil over medium-high heat.', 2);
INSERT INTO instruction VALUES ('5', 'Add the sliced beef to the skillet and cook until browned. Remove from the skillet and set aside.', 3);
INSERT INTO instruction VALUES ('5', 'In the same skillet, add diced onions and mushrooms. Saut  until softened.', 4);
INSERT INTO instruction VALUES ('5', 'Add flour and cook for a minute, stirring constantly.', 5);
INSERT INTO instruction VALUES ('5', 'Pour in beef broth and Worcestershire sauce. Bring to a simmer, stirring to thicken the sauce.', 6);
INSERT INTO instruction VALUES ('5', 'Reduce heat to low and return the cooked beef to the skillet.', 7);
INSERT INTO instruction VALUES ('5', 'Stir in sour cream and cook until heated through.', 8);
INSERT INTO instruction VALUES ('5', 'Season with salt and pepper to taste.', 9);
INSERT INTO instruction VALUES ('5', 'Serve the Beef Stroganoff over cooked egg noodles or rice.', 10);


INSERT INTO instruction VALUES
('6','Chop assorted vegetables such as carrots, celery, and onions.' , 1);
INSERT INTO instruction VALUES
('6','In a large pot, heat olive oil and saut  the chopped vegetables until softened.' ,2 );
INSERT INTO instruction VALUES
('6','Add vegetable broth and bring the mixture to a simmer.' , 3);
INSERT INTO instruction VALUES
('6','Season with salt, pepper, and your favorite herbs.' , 4);
INSERT INTO instruction VALUES
('6','Simmer the soup for about 30 minutes until the vegetables are tender.' ,5 );
INSERT INTO instruction VALUES
('6', 'Serve hot and enjoy your delicious Vegetable Soup!',6 );


INSERT INTO instruction VALUES ('7','Preheat your oven to 475 degrees Fahrenheit (245 degrees Celsius).' ,1 );
INSERT INTO instruction VALUES ('7','Roll out the pizza dough on a floured surface to your desired thickness.' ,2 );
INSERT INTO instruction VALUES ('7','Transfer the rolled-out dough to a pizza stone or baking sheet.' ,3 );
INSERT INTO instruction VALUES ('7',  'Spread a thin layer of olive oil over the pizza dough.',4);
INSERT INTO instruction VALUES ('7', 'Evenly spread tomato sauce over the oiled dough, leaving a border around the edges.',5 );
INSERT INTO instruction VALUES ('7', 'Arrange fresh mozzarella slices and cherry tomato halves on top of the sauce.', 6);
INSERT INTO instruction VALUES ('7', 'Drizzle a bit more olive oil over the toppings and sprinkle with salt and pepper.', 7);
INSERT INTO instruction VALUES ('7', 'Bake in the preheated oven for 12-15 minutes or until the crust is golden and the cheese is melted and bubbly.', 8);
INSERT INTO instruction VALUES ('7', 'Remove the pizza from the oven and sprinkle fresh basil leaves on top.', 9);
INSERT INTO instruction VALUES ('7', 'Allow the pizza to cool slightly before slicing and serving.', 10);
INSERT INTO instruction VALUES ('7', 'Enjoy your delicious homemade Margherita Pizza!', 11);

INSERT INTO instruction VALUES ('8', 'In a blender, combine frozen acai berries, banana, and almond milk.', 1);
INSERT INTO instruction VALUES ('8', 'Blend until smooth and creamy.', 2);
INSERT INTO instruction VALUES ('8', 'Pour the acai mixture into a bowl.', 3);
INSERT INTO instruction VALUES ('8', 'Top with granola, sliced bananas, berries, and a drizzle of honey.', 4);
INSERT INTO instruction VALUES ('8',  'Optional: Add coconut flakes, chia seeds, or nut butter for extra flavor.',5);
INSERT INTO instruction VALUES ('8', 'Serve immediately and enjoy your nutritious Acai Bowl!', 6);


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('omarkhalili810@gmail.com', '5', TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Dinner');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('amjadawwad129@gmail.com', '6', TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('admin1@admin.com', '7', TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'Dinner');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('rahafhazr@icloud.com', '8', TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('nouralhudakilany@gmail.com', '1', TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'Dinner');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('najwa@email.com', '2', TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('saleh@email.com', '3', TO_DATE('2024-11-10', 'YYYY-MM-DD'), 'Breakfast');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('mahmoud@email.com', '4', TO_DATE('2024-12-15', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('omarkhalili810@gmail.com', '1', TO_DATE('2024-01-25', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('amjadawwad129@gmail.com', '1', TO_DATE('2024-01-26', 'YYYY-MM-DD'), 'Dinner');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('admin1@admin.com', '2', TO_DATE('2024-02-10', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('rahafhazr@icloud.com', '2', TO_DATE('2024-02-11', 'YYYY-MM-DD'), 'Dinner');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('nouralhudakilany@gmail.com', '3', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Breakfast');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('najwa@email.com', '3', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'Breakfast');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('saleh@email.com', '4', TO_DATE('2024-04-20', 'YYYY-MM-DD'), 'Lunch');
INSERT INTO meal_planning (email, recipe_id, meal_date, meal_type) VALUES ('mahmoud@email.com', '4', TO_DATE('2024-04-21', 'YYYY-MM-DD'), 'Dinner');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO recipe_review VALUES ('rahafhazr@icloud.com', '1', CURRENT_TIMESTAMP, 5, 'Delicious!');


INSERT INTO recipe_review VALUES ('mahmoud@email.com', '2', CURRENT_TIMESTAMP, 4, 'Great recipe, easy to follow.');


INSERT INTO recipe_review VALUES ('saleh@email.com', '3', CURRENT_TIMESTAMP, 3, 'Good but could use more seasoning.');


INSERT INTO recipe_review VALUES ('omarkhalili810@gmail.com', '4', CURRENT_TIMESTAMP, 5, 'Amazing flavors!');


INSERT INTO recipe_review VALUES ('amjadawwad129@gmail.com', '5', CURRENT_TIMESTAMP, 4, 'Enjoyed it.');


INSERT INTO recipe_review VALUES ('nouralhudakilany@gmail.com', '5', CURRENT_TIMESTAMP, 4, 'Nice dish.');


INSERT INTO recipe_review VALUES ('najwa@email.com', '5', CURRENT_TIMESTAMP, 2, 'Not my favorite.');


INSERT INTO recipe_review VALUES ('admin1@admin.com', '6', CURRENT_TIMESTAMP, 5, 'Perfect!');


INSERT INTO recipe_review VALUES ('mahmoud@email.com', '7', CURRENT_TIMESTAMP, 3, 'Decent recipe.');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO shopping_list VALUES ('omarkhalili810@gmail.com', '1', '2');
INSERT INTO shopping_list VALUES ('omarkhalili810@gmail.com', '2', '5');
INSERT INTO shopping_list VALUES ('omarkhalili810@gmail.com', '3', '3');


INSERT INTO shopping_list VALUES ('amjadawwad129@gmail.com', '4', '3');
INSERT INTO shopping_list VALUES ('amjadawwad129@gmail.com', '5', '2');
INSERT INTO shopping_list VALUES ('amjadawwad129@gmail.com', '6', '3');


INSERT INTO shopping_list VALUES ('admin1@admin.com', '7', '1');
INSERT INTO shopping_list VALUES ('admin1@admin.com', '8', '2');
INSERT INTO shopping_list VALUES ('admin1@admin.com', '9', '3');


INSERT INTO shopping_list VALUES ('rahafhazr@icloud.com', '10', '2');
INSERT INTO shopping_list VALUES ('rahafhazr@icloud.com', '11', '4');
INSERT INTO shopping_list VALUES ('rahafhazr@icloud.com', '12', '3');


INSERT INTO shopping_list VALUES ('nouralhudakilany@gmail.com', '13', '5');
INSERT INTO shopping_list VALUES ('nouralhudakilany@gmail.com', '14', '2');
INSERT INTO shopping_list VALUES ('nouralhudakilany@gmail.com', '15', '3');


INSERT INTO shopping_list VALUES ('najwa@email.com', '1', '4');
INSERT INTO shopping_list VALUES ('najwa@email.com', '2', '1');
INSERT INTO shopping_list VALUES ('najwa@email.com', '3', '2');


INSERT INTO shopping_list VALUES ('saleh@email.com', '4', '3');
INSERT INTO shopping_list VALUES ('saleh@email.com', '5', '1');
INSERT INTO shopping_list VALUES ('saleh@email.com', '6', '4');


INSERT INTO shopping_list VALUES ('mahmoud@email.com', '7', '2');
INSERT INTO shopping_list VALUES ('mahmoud@email.com', '8', '3');
INSERT INTO shopping_list VALUES ('mahmoud@email.com', '9', '1');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO cooking_class (class_ID, class_name, chef_name, about, picture, time_period, cuisine_class, class_language, class_level, class_description, price)
VALUES 
('1', 'Italian Pasta Masterclass', 'Chef Giovanni', 'Learn the art of making authentic Italian pasta from scratch.', 'italian_pasta.jpg', '2 hours', 'Italian', 'English', 1, 'Join Chef Giovanni to master the art of crafting delicious Italian pasta dishes.', 49.99);


INSERT INTO cooking_class (class_ID, class_name, chef_name, about, picture, time_period, cuisine_class, class_language, class_level, class_description, price)
VALUES 
('2', 'Sushi Making Workshop', 'Chef Sakura', 'Discover the secrets of creating perfect sushi rolls with Chef Sakura.', 'sushi_workshop.jpg', '3 hours', 'Japanese', 'English', 2, 'Join Chef Sakura for a hands-on sushi making experience and explore the world of Japanese cuisine.', 79.99);


INSERT INTO cooking_class (class_ID, class_name, chef_name, about, picture, time_period, cuisine_class, class_language, class_level, class_description, price)
VALUES 
('3', 'Mexican Fiesta Class', 'Chef Alejandro', 'Experience the vibrant flavors of Mexican cuisine with Chef Alejandro.', 'mexican_fiesta.jpg', '2.5 hours', 'Mexican', 'Spanish', 1, 'Dive into the world of Mexican flavors as Chef Alejandro guides you through a fiesta of culinary delights.', 59.99);


INSERT INTO cooking_class (class_ID, class_name, chef_name, about, picture, time_period, cuisine_class, class_language, class_level, class_description, price)
VALUES 
('4', 'Baking for Beginners', 'Chef Emily', 'Master the fundamental techniques of baking with Chef Emily.', 'baking_basics.jpg', '2 hours', 'Baking', 'English', 1, 'Learn the essentials of baking, from measuring ingredients to creating mouthwatering treats.', 39.99);


INSERT INTO cooking_class (class_ID, class_name, chef_name, about, picture, time_period, cuisine_class, class_language, class_level, class_description, price)
VALUES 
('5', 'Asian Stir-Fry Workshop', 'Chef Li Wei', 'Unlock the secrets of perfecting Asian stir-fry dishes with Chef Li Wei.', 'asian_stir_fry.jpg', '2.5 hours', 'Asian', 'Mandarin', 2, 'Join Chef Li Wei to explore the art of stir-frying and create delicious Asian-inspired meals.', 69.99);


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO favorite (email, recipe_id) VALUES ('rahafhazr@icloud.com', '1');


INSERT INTO favorite (email, recipe_id) VALUES ('mahmoud@email.com', '2');


INSERT INTO favorite (email, recipe_id) VALUES ('saleh@email.com', '3');


INSERT INTO favorite (email, recipe_id) VALUES ('omarkhalili810@gmail.com', '4');


INSERT INTO favorite (email, recipe_id) VALUES ('amjadawwad129@gmail.com', '5');


INSERT INTO favorite (email, recipe_id) VALUES ('nouralhudakilany@gmail.com', '6');


INSERT INTO favorite (email, recipe_id) VALUES ('najwa@email.com', '3');


INSERT INTO favorite (email, recipe_id) VALUES ('admin1@admin.com', '2');


INSERT INTO favorite (email, recipe_id) VALUES ('mahmoud@email.com', '8');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO class_review VALUES ('rahafhazr@icloud.com', '1', CURRENT_TIMESTAMP, 5, 'Excellent cooking class! Learned a lot.');


INSERT INTO class_review VALUES ('mahmoud@email.com', '2', CURRENT_TIMESTAMP, 4, 'The class was informative and enjoyable.');


INSERT INTO class_review VALUES ('saleh@email.com', '3', CURRENT_TIMESTAMP, 3, 'Good class, but I expected more hands-on activities.');


INSERT INTO class_review VALUES ('omarkhalili810@gmail.com', '4', CURRENT_TIMESTAMP, 8, 'The instructor was fantastic, and the recipes were delicious!');


INSERT INTO class_review VALUES ('amjadawwad129@gmail.com', '5', CURRENT_TIMESTAMP, 8, 'Enjoyed the class and the cooking techniques shared.');


INSERT INTO class_review VALUES ('nouralhudakilany@gmail.com', '5', CURRENT_TIMESTAMP, 4, 'Well-organized class with tasty recipes.');


INSERT INTO class_review VALUES ('najwa@email.com', '5', CURRENT_TIMESTAMP, 2, 'Class content was not as expected, a bit disappointed.');


INSERT INTO class_review VALUES ('admin1@admin.com', '5', CURRENT_TIMESTAMP, 8, 'Highly recommend this class, worth every penny!');


INSERT INTO class_review VALUES ('mahmoud@email.com', '4', CURRENT_TIMESTAMP, 3, 'The class was okay, but some topics could be explained better.');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO class_content (class_ID, class_content) VALUES ('1', 'https://www.youtube.com/watch?v=bE9avMoRrBA');


INSERT INTO class_content (class_ID, class_content) VALUES ('2', 'https://www.youtube.com/watch?v=EGeNKGosXA8');


INSERT INTO class_content (class_ID, class_content) VALUES ('3', 'https://www.youtube.com/watch?v=Ak5GEd2z1FI');


INSERT INTO class_content (class_ID, class_content) VALUES ('4', 'https://www.youtube.com/watch?v=ynKx2LVQeC4');


INSERT INTO class_content (class_ID, class_content) VALUES ('5', 'https://www.youtube.com/watch?v=J3CkrJ9vPJQ%26list=PL1dleLLvCiHOrrj2lDtCDiU8oX-ySckf8');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO social_link (email, social_link) VALUES ('rahafhazr@icloud.com', 'https://twitter.com/rahafhazr');


INSERT INTO social_link (email, social_link) VALUES ('mahmoud@email.com', 'https://linkedin.com/in/mahmoud');


INSERT INTO social_link (email, social_link) VALUES ('saleh@email.com', 'https://instagram.com/saleh');


INSERT INTO social_link (email, social_link) VALUES ('omarkhalili810@gmail.com', 'https://facebook.com/omarkhalili');


INSERT INTO social_link (email, social_link) VALUES ('amjadawwad129@gmail.com', 'https://twitter.com/amjadawwad');


INSERT INTO social_link (email, social_link) VALUES ('nouralhudakilany@gmail.com', 'https://linkedin.com/in/nouralhudakilany');


INSERT INTO social_link (email, social_link) VALUES ('najwa@email.com', 'https://instagram.com/najwa');


INSERT INTO social_link (email, social_link) VALUES ('admin1@admin.com', 'https://facebook.com/admin1');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO invoice VALUES ('ayah@email.com', '1', 12345678901, SYSTIMESTAMP, 'ayah Doe');
INSERT INTO invoice VALUES ('najwa@email.com', '2', 23456789012, SYSTIMESTAMP, 'najwa Smith');
INSERT INTO invoice VALUES ('admin1@admin.com', '3', 34567890123, SYSTIMESTAMP, 'admin1 Johnson');
INSERT INTO invoice VALUES ('mahmoud@email.com', '4', 45678901234, SYSTIMESTAMP, 'mahmoud Brown');
INSERT INTO invoice VALUES ('admin1@admin.com', '5', 56789012345, SYSTIMESTAMP, 'admin1 Johnson');
