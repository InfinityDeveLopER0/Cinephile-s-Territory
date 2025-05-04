create database Cinephile
use Cinephile

create table users( 
first_name VARCHAR(50),
last_name VARCHAR(50);
User_id int primary key ,
Mail_id varchar(60), 
Password varchar(100),
DOB date
);
alter table users add column join_date date,
alter table users add column is_active boolean
alter table users add column location varchar(50)
alter table users add column Gender enum('Male','Female','Others')
alter table users add column username varchar(25)

ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (Mail_id);
ALTER TABLE users ADD CONSTRAINT unique_username UNIQUE (username);

DESC users

create table movies(
movie_name varchar(100),
movie_id int primary key,
Year int,
synopsis text,
);

alter table movies add column runtime varchar(50)

alter table movies add column Availablity varchar(50)

alter table movies add column lang_id int,
add constraint fk_lang
foreign key(lang_id) references languages (lang_id) on delete set null;

alter table movies add column director_id int,
add constraint fk_director
foreign key(director_id) references directors_list (director_id) on delete set null; 

alter table movies add column Ratings decimal(3,1) check(Ratings >=0 and Ratings <=10)
alter table movies add column Trailer_url text
alter table movies add column cateogry varchar(50)

desc movies



create table directors_list ( director_id int primary key auto_increment,
							  direc_name varchar(100) collate utf8mb4_general_ci,
                              nationality varchar(50) collate utf8mb4_general_ci,
                              unique(direc_name,nationality) 
                              );
alter table directors_list add column bio varchar(200)
alter table directors_list add column num_movies int
alter table directors_list add column Gender enum('Male', 'Female', 'others')
alter table directors_list add column Awards text
alter table directors_list add column DOB Date after nationality;
desc directors_list


create table actors_list (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(100) COLLATE utf8mb4_general_ci,
    nationality VARCHAR(50) COLLATE utf8mb4_general_ci,
    DOB DATE,
    bio VARCHAR(200),
    num_movies INT,
    Gender ENUM('Male', 'Female', 'others'),
    Awards TEXT,
    UNIQUE(actor_name, nationality)
);
desc actors_list


create table movie_actors_junction (
    movie_id INT,
    actor_id INT,
    role_type ENUM('Lead', 'Supporting', 'Cameo');
    PRIMARY KEY (movie_id, actor_id),  -- Composite primary key to prevent duplicates
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,  
    FOREIGN KEY (actor_id) REFERENCES actors_list(actor_id) ON DELETE CASCADE  
);

DESC movie_actors_junction


create table top_movies_direc  ( top_id int primary key auto_increment,
								 director_id int,
								 movie_id int,
								 top_rank int,
								 foreign key(director_id) references directors_list (director_id) on delete cascade,
								 foreign key(movie_id) references movies (movie_id) on delete cascade,
								 unique ( director_id, movie_id)
								 );
desc top_movies_direc


create table genere( genere_id int primary key,
					 Categories varchar(50)
				   );
alter table genere add column description text 
alter table genere add column created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

desc genere

CREATE TABLE movie_genres_junction (
  movie_id INT,
  genere_id INT,
  PRIMARY KEY (movie_id, genere_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (genere_id) REFERENCES genere(genere_id) ON DELETE CASCADE
);


create table languages( lang_id int primary key,
						Languages varchar(25)
					  );
alter table languages add column num_of_movies int
alter table languages add column popularity_score decimal(3,2) check(popularity_score >=0 and popularity_score <=5)

ALTER TABLE languages ADD CONSTRAINT unique_language_name UNIQUE (Languages);
ALTER TABLE languages MODIFY Languages VARCHAR(25) COLLATE utf8mb4_general_ci;

desc languages


create table streaming_platforms( platforms_id int primary key,
							      platform_names varchar(50),
                                  URL text,
                                  logo_url text,
                                  subscription_type enum('free', 'paid', 'freemium'),
                                  content_famous_for json
								);
alter table streaming_platforms add column ratings decimal(3,2) check(ratings >=0 and ratings<=5)
ALTER TABLE streaming_platforms
ADD COLUMN monthly_price DECIMAL(6,2),
ADD COLUMN annual_price DECIMAL(6,2);

ALTER TABLE streaming_platforms
ADD CONSTRAINT unique_platform_name UNIQUE (platform_names);

desc streaming_platforms
	
    
create table critics_rating( Critic_id int primary key ,
							 Movie_id int ,
                             Review_desc text , 
                             desc_Source varchar(100) ,
                             url varchar(200),
                             foreign key(Movie_id) REFERENCES movies(movie_id)
                             );
desc critics_rating
                             
create table upcoming_movies( upcom_movie_id int primary key,
							  upcom_movie_name varchar(50),
                              expected_date varchar(25),
                              availab_platf varchar(50)
                              );
                              
desc upcoming_movies

create table upcoming_reviews( upcom_rev_id int primary key,
							   upcom_movie_id int,
                               date_time varchar(120),
                               foreign key(upcom_movie_id) references upcoming_movies(upcom_movie_id) on delete cascade
                               );
                               
desc upcoming_reviews

create table best_theatres( Theatre_id int primary key,
						    Theatre_name varchar(100),
                            city_loc varchar(100),
                            Audi_Name varchar(50),
                            Loc_url text,
						    Ratings varchar(25)
                            );
desc best_theatres

CREATE TABLE theatre_features (
    feature_id INT PRIMARY KEY AUTO_INCREMENT,
    feature_name VARCHAR(100) UNIQUE
);

CREATE TABLE theatre_best_for (
    theatre_id INT,
    feature_id INT,
    PRIMARY KEY (theatre_id, feature_id),
    FOREIGN KEY (theatre_id) REFERENCES best_theatres(Theatre_id) ON DELETE CASCADE,
    FOREIGN KEY (feature_id) REFERENCES theatre_features(feature_id) ON DELETE CASCADE
);


                            
create table Notification( notifi_id int primary key auto_increment,
						   user_id int,
                           message varchar(200),
                           sent_time timestamp,
                           foreign key (user_id) REFERENCES users(user_id)
						  );
alter table Notification add column link_url textinsert_after_review
alter table Notification add column created_at datetime default current_timestamp

desc  Notification

create table watchlist( watchlist_id int primary key auto_increment,
						user_id int,
						movie_id int,
                        added_date date,
                        priority enum('high','medium','low'),
                        is_watched boolean default false,
						FOREIGN KEY (user_id) REFERENCES users(User_id) ON DELETE CASCADE,
						FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE
					  );

desc watchlist


create table user_preferences (prefernce_id int primary key auto_increment,
							   user_id int,
                               preferred_genere JSON,
                               preferred_languages JSON,
                               preferred_actors JSON,
                               preferred_directors JSON,
                               max_recommendations int default 10,
                               foreign key (user_id) references users(User_id) on delete cascade
                               );
desc user_preferences

create table user_reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    movie_id INT,
    rating DECIMAL(2,1) CHECK(rating >= 0 AND rating <= 10),
    review_text TEXT,
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(User_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

desc user_reviews

--- Not yet completed, yet to do -------
3. Movie Traction / Popularity Tracking
Track real-time or historical data for trending movies.

CREATE TABLE movie_popularity (
    movie_id INT,
    date DATE,
    views INT DEFAULT 0,
    likes INT DEFAULT 0,
    shares INT DEFAULT 0,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    PRIMARY KEY (movie_id, date)
);






	
