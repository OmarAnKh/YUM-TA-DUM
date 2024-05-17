--1. Retrieve all account's:
SELECT * FROM ACCOUNT ;

--2. Retrieve all admin's :
SELECT * FROM ACCOUNT WHERE (account_type='admin');

--3. Retrieve all user's :
SELECT * FROM ACCOUNT WHERE (account_type='user');

--4. Retrieve specific account:
SELECT * FROM ACCOUNT WHERE(email='omarkhalili810@gmail.com');

--5. Retrieve specific social links for the account:
SELECT s.social_link,s.email
FROM social_link s JOIN account a ON s.email=a.email 
WHERE LOWER(a.username)='amjad';

--6. Retrieve the number of followers for a specific account:
SELECT COUNT(*) FROM follow f JOIN ACCOUNT a ON f.email=a.email WHERE (f.follower_email='amjadawwad129@gmail.com');

--7. Retrieve the number of recipes for a specific account:
SELECT COUNT(*) FROM recipe JOIN ACCOUNT  ON user_email=email WHERE(username='Rahaf Hazr');

--8. Retrieve all recipes in a specific account:
SELECT * FROM recipe JOIN ACCOUNT  ON user_email=email WHERE(username='Nouralhuda Kilany');

--9. Retrieve specific recipes from a specific account:
SELECT * FROM recipe JOIN ACCOUNT  ON user_email=email WHERE(username='Amjad' and recipe_id=2);

--10. Retrieve the number of favorite's for a specific recipe:
SELECT COUNT(*) FROM favorite WHERE(recipe_id=3);
SELECT COUNT(*) FROM favorite f JOIN recipe r ON f.recipe_id=r.recipe_id WHERE(r.recipe_name='Spaghetti');

--11. Retrieve the number of comments for a specific recipe:
SELECT COUNT(review_comment) FROM recipe_review WHERE(recipe_id=5);
SELECT COUNT(*) 
FROM recipe_review rr JOIN recipe r ON rr.RECIPE_ID=r.RECIPE_ID
WHERE r.recipe_name='Beef Stroganoff';

--12. Retrieve the comment's in a specific recipe:
SELECT review_comment FROM recipe_review WHERE(recipe_id=5);

--13. Retrieve all recipes that is not approved:
SELECT * FROM recipe WHERE (recipe_state=0 OR recipe_state=-1);

--14. Retrieve all recipes that is approved:
SELECT * FROM recipe WHERE (recipe_state=1);
 
--15. Retrieve a recipe instruction in order:
SELECT  recipe_name,instruction_order,instruction FROM instruction i JOIN recipe r ON i.recipe_id=r.recipe_id where(r.recipe_name='Spaghetti') ORDER BY instruction_order ASC;

--16. Retrieve the recipe ingredient:
SELECT ingredient_name,h.quantity,i.ingredient_category FROM (( has_a h JOIN ingredient i ON h.ingredient_id= i.ingredient_id)JOIN recipe r ON h.recipe_id =r.recipe_id) WHERE(r.recipe_name='Chocolate Cake') ;

--17. Retrieve the number of ingredients in a specific recipe:
SELECT COUNT(*)Number_of_ingredients,r.recipe_name FROM (( has_a h JOIN ingredient i ON h.ingredient_id= i.ingredient_id)JOIN recipe r ON h.recipe_id =r.recipe_id) WHERE(r.recipe_name='Chocolate Cake') GROUP BY recipe_name ;

--18. Retrieve the number of instructions in a specific recipe:
SELECT COUNT(*) Number_of_instructions,r.recipe_name FROM instruction i JOIN recipe r ON i.recipe_id=r.recipe_id where(r.recipe_name='Spaghetti') GROUP BY recipe_name;

--19. Retrieve the ingredient's that is not approved:
SELECT * FROM ingredient WHERE (ingredient_state=0 OR ingredient_state=-1);

--20. Retrieve the shopping list for a specific account :
SELECT ingredient_id FROM shopping_list WHERE(email='rahafhazr@icloud.com');
SELECT i.ingredient_name,s.amount FROM shopping_list  s JOIN ingredient i  ON s.ingredient_id=i.ingredient_id WHERE(email='omarkhalili810@gmail.com');

--21. Retrieve the meal-planning list for a specific account:
SELECT * FROM meal_planning WHERE(email='nouralhudakilany@gmail.com');
SELECT recipe_name,m.meal_date,m.meal_type FROM recipe R JOIN meal_planning M ON R.recipe_id = M.recipe_id where (M.email='omarkhalili810@gmail.com');

--22. Retrieve all cooking classes:
SELECT * FROM cooking_class;

--23. Retrieve the number of comments in a specific cooking class:
SELECT COUNT(review_comment) FROM class_review WHERE(class_ID=5);

--24. Retrieve invoice for a specific account:
SELECT * FROM invoice WHERE (email='omarkhalili810@gmail.com');
SELECT I.BIN, I.card_name,I.pay_time FROM invoice I JOIN ACCOUNT A ON I.email=A.email where(a.email='amjadawwad129@gmail.com');

--24. Unfollow:
DELETE FROM follow WHERE (email='saleh@email.com' AND FOLLOWER_EMAIL='omarkhalili810@gmail.com');

--25. Update meal-planning recipe:
UPDATE meal_planning SET recipe_id=(SELECT recipe_id FROM recipe where recipe_name='Beef Stroganoff')
WHERE email='amjadawwad129@gmail.com' AND RECIPE_ID='6';

--26. Change state for all recipe's to 1:
UPDATE recipe SET recipe_state=1, admin_email='amjadawwad129@gmail.com'
WHERE recipe_state=0 OR recipe_state=-1;

--27. Delete all recipes that have a -1 state:
DELETE FROM recipe WHERE recipe_state=-1;

--28. Delete an item from a shopping list:
DELETE FROM shopping_list WHERE Ingredient_ID='3' AND email='nouralhudakilany@gmail.com';

--29. Delete all items from a shopping list:
DELETE FROM shopping_list  WHERE email='rahafhazr@icloud.com';

--30. Update a review rate:
UPDATE recipe_review SET RATE=5, review_comment='fantastic'
WHERE (review_time='20-DEC-23 04.49.48.021000000 PM' AND recipe_id=5 AND email='najwa@email.com');
