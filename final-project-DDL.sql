CREATE TABLE account(
email VARCHAR(100) PRIMARY KEY,
username VARCHAR(100) UNIQUE NOT NULL,
bio VARCHAR(1000) DEFAULT NULL,
profile_picture VARCHAR(500),
address VARCHAR (50),
Apassword VARCHAR(50) NOT NULL,
date_of_birth DATE,
account_type VARCHAR(10)DEFAULT 'user' NOT NULL CHECK(account_type='user' or account_type='admin')
);

CREATE TABLE recipe(
recipe_id VARCHAR(25) PRIMARY KEY,
preparation_time VARCHAR(20)DEFAULT NULL ,
difficulty_level NUMBER(2) DEFAULT NULL,
estimated_time VARCHAR(20) DEFAULT NULL,
recipy_category VARCHAR(25) NOT NULL,
number_of_servings NUMBER(3) DEFAULT NULL,
picture VARCHAR(500) NOT NULL,
recipe_name VARCHAR(25) NOT NULL,
recipe_state NUMBER(1) default 0 NOT NULL  CHECK(recipe_state IN(1,0,-1)),
publication_date date NOT NULL,
approve_time TIMESTAMP NOT NULL ,
user_email VARCHAR2(100),
admin_email VARCHAR2(100),
CONSTRAINT RECIPE_FK_USEREMAIL
        FOREIGN KEY (user_email)
        REFERENCES account(email)
        ON DELETE CASCADE,
CONSTRAINT RECIPE_FK_ADMINEMAIL
        FOREIGN KEY (admin_email)
        REFERENCES account(email)
);

CREATE TABLE ingredient(
ingredient_ID VARCHAR(25) PRIMARY KEY,
picture VARCHAR(500) NOT NULL,
far_per_unit NUMBER(3) DEFAULT 0,
ingredient_category VARCHAR(25),
proten_per_unit NUMBER(3) DEFAULT 0,
ingredient_name VARCHAR(25) NOT NULL,
calories_per_unit NUMBER(3) DEFAULT 0,
ingredient_state  NUMBER(1) default 0 NOT NULL  CHECK(ingredient_state IN(1,0,-1)),
approve_time TIMESTAMP NOT NULL,
user_email VARCHAR2(100),
admin_email VARCHAR2(100),
CONSTRAINT INGREDIENT_FK_USEREMAIL
        FOREIGN KEY (user_email)
        REFERENCES account(email)
        ON DELETE CASCADE,
CONSTRAINT INGREDIENT_FK_ADMINEMAIL
        FOREIGN KEY (admin_email)
        REFERENCES account(email)
);

CREATE TABLE cooking_class(
class_ID VARCHAR(25) PRIMARY KEY,
class_name VARCHAR(25) NOT NULL,
chef_name VARCHAR(50) NOT NULL,
about VARCHAR(500) NOT NULL,
picture VARCHAR(500) NOT NULL,
time_period VARCHAR(25) NOT NULL,
cuisine_class VARCHAR(25) NOT NULL,
class_language VARCHAR(25) NOT NULL,
class_level NUMBER(2) DEFAULT 0,
class_description VARCHAR(500) NOT NULL,
price NUMBER(4) NOT NULL
);

CREATE TABLE class_content(
class_ID VARCHAR(25),
class_content  VARCHAR(500) NOT NULL,
CONSTRAINT PK_CLASS_CONTENT PRIMARY KEY (class_ID,class_content),
CONSTRAINT CLASS_CONTENT_FK_class_ID
        FOREIGN KEY(class_ID)
        REFERENCES cooking_class(class_ID)
        ON DELETE CASCADE
        
);
CREATE TABLE instruction(
recipe_id VARCHAR(25),
instruction VARCHAR(1000),
instruction_order NUMBER(3),
CONSTRAINT PK_INSTRUCTION PRIMARY KEY (recipe_id,instruction),
CONSTRAINT INSTRUCTION_FK_RECIPEID
        FOREIGN KEY (recipe_id)
        REFERENCES recipe(recipe_id)
        ON DELETE CASCADE
);


CREATE TABLE follow (
email VARCHAR(100),
follower_email VARCHAR(100),
CONSTRAINT PK_FOLLOW PRIMARY KEY (email, follower_email),
CONSTRAINT FOLLOW_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE,
CONSTRAINT FOLLOW_FK_FOLLOWER_EMAIL
    FOREIGN KEY (follower_email)
    REFERENCES account(email) 
    ON DELETE CASCADE
   
);

CREATE TABLE social_link(
email VARCHAR (100),
social_link VARCHAR(1000),
CONSTRAINT PK_SOCIAL_LINK PRIMARY KEY (email,social_link),
CONSTRAINT SOCIAL_LINK_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE
);

CREATE TABLE has_a(
recipe_id VARCHAR(25),
ingredient_ID VARCHAR(25),
quantity VARCHAR(50) DEFAULT '1' ,
CONSTRAINT PK_HAS_A PRIMARY KEY (ingredient_ID, recipe_id),
CONSTRAINT HAS_A_FK_RECIPE_ID
        FOREIGN KEY(recipe_id)
        REFERENCES recipe(recipe_id),
CONSTRAINT HAS_A_FK_INGREDIENT_ID
        FOREIGN KEY(ingredient_ID)
        REFERENCES ingredient(ingredient_ID)    
);

CREATE TABLE favorite(
email VARCHAR(100),
recipe_id VARCHAR(25),
CONSTRAINT PK_FAVORITE PRIMARY KEY (email, recipe_id),
CONSTRAINT FAVORITE_FK_RECIPE_ID
        FOREIGN KEY(recipe_id)
        REFERENCES recipe(recipe_id)
        ON DELETE CASCADE,
CONSTRAINT FAVORITE_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE
);


CREATE TABLE meal_planning(
email VARCHAR(100),
recipe_id VARCHAR(25),
meal_date DATE ,
meal_type VARCHAR(25),
CONSTRAINT PK_MEAL_PLANNING PRIMARY KEY (email, recipe_id, meal_date, meal_type),
CONSTRAINT MEAL_PLANNING_FK_RECIPE_ID
        FOREIGN KEY(recipe_id)
        REFERENCES recipe(recipe_id)
        ON DELETE CASCADE,
CONSTRAINT MEAL_PLANNING_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE
);

CREATE TABLE recipe_review(
email VARCHAR(100),
recipe_id VARCHAR(25),
review_time TIMESTAMP ,
rate NUMBER(1),
review_comment VARCHAR(200),
CONSTRAINT PK_RECIPE_REVIEW PRIMARY KEY (email, recipe_id, review_time),
CONSTRAINT RECIPE_REVIEW_FK_RECIPE_ID
        FOREIGN KEY(recipe_id)
        REFERENCES recipe(recipe_id)
        ON DELETE CASCADE,
CONSTRAINT RECIPE_REVIEW_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE
);


CREATE TABLE shopping_list(
email VARCHAR(100),
ingredient_ID VARCHAR(25),
amount VARCHAR(10) NOT NULL,
CONSTRAINT PK_SHOPPING_LIST PRIMARY KEY (email, ingredient_ID),
CONSTRAINT SHOPPING_LIST_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE,
CONSTRAINT SHOPPING_LIST_FK_INGREDIENT
        FOREIGN KEY(ingredient_ID)
        REFERENCES ingredient(ingredient_ID)
        ON DELETE CASCADE
);

CREATE TABLE class_review(
email VARCHAR(100),
class_ID VARCHAR(25),
review_time TIMESTAMP ,
rate NUMBER(1),
review_comment VARCHAR(200),
CONSTRAINT PK_CLASS_REVIEW PRIMARY KEY (email, class_id, review_time),
CONSTRAINT CLASS_REVIEW_FK_RECIPE_ID
        FOREIGN KEY(class_ID)
        REFERENCES cooking_class(class_ID)
        ON DELETE CASCADE,
CONSTRAINT CLASS_REVIEW_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email)
        ON DELETE CASCADE
);

CREATE TABLE invoice(
email VARCHAR(100),
class_ID VARCHAR(25),
BIN NUMBER(11),
pay_time TIMESTAMP,
card_name VARCHAR(50),
CONSTRAINT PK_INVOICE PRIMARY KEY (email, class_ID),
CONSTRAINT INVOICE_FK_EMAIL
        FOREIGN KEY (email)
        REFERENCES account(email),   
CONSTRAINT INVOICE_FK_class
        FOREIGN KEY (class_ID)
        REFERENCES cooking_class(class_ID)
    
);



