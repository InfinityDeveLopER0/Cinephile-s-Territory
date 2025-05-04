insert into users values( "Allen"  "Jacob" , 001, "allenjaco@gmail.com" , "jacob973y" , " 12/03/2004","allenjac", "Male", "Chennai", True, "15.03.2025");
select * from watchlist

update users
set last_name = 'Jacob'
where User_id = 1;


insert into movies values( "Interstellar",
				1 , 
                "Sci-fic/Adventure", 
                2014 ,
                "Ellen Burstayn" ,
                'The film follows Cooper a former NASA pilot who is tasked with leading a mission through a wormhole to find a habitable planet in another galaxy'); 
update movies
set runtime = " 169 minutes "
where movie_id= 1;

update movies
set Availablity = "OTT"
where movie_id= 1;

update movies
set director_id =  (select director_id from directors_list WHERE direc_name = "Christopher Nolan" LIMIT 1)
where movie_id = 1

update movies 
set lang_id = (select lang_id from languages where Languages = " Malayalam " Limit 1)
where movie_id = 9

insert into movies values( " The Mummy murders ",
							2,
                            "Horror",
                            2024,
                            "Colin Bressler",
                            "Jason Scarbrough",
                            "A lot of people have recently gone missing in Alexis' hometown of San Antonio, Texas. Alexis is a top reporter for the local news station, and there have been rumors that a serial killer is responsible for those missing.",
						    "123 minutes",
                            "OTT")
update movies
set director_id =  (SELECT director_id FROM directors_list WHERE direc_name = "Colin Bressler" LIMIT 1)
where movie_id = 2

insert into movies values ("Inception",
						    3,
						   "Sci-Fi",
                           2010, 
						   "Leonardo DiCaprio",
                           "A thief enters dreams...",
                           "148 min",
                           "Netflix",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Christopher Nolan" LIMIT 1)
                           );

insert into movies values ("The Dark Knight",
						    4,
						   "Action",
                           2008, 
						   "Christian Bale",
                           "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.",
                           "152 min",
                           "Prime Video",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Christopher Nolan" LIMIT 1)
                           );
                           
insert into movies values ("The Dark Knight",
						    4,
						   "Action",
                           2008, 
						   "Christian Bale",
                           "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.",
                           "152 min",
                           "Prime Video",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Christopher Nolan" LIMIT 1)
                           );

insert into movies values ("The Dark Knight",
						    4,
						   "Action",
                           2008, 
						   "Christian Bale",
                           "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.",
                           "152 min",
                           "Prime Video",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Christopher Nolan" LIMIT 1)
                           );

insert into movies values ("Dragon",
						    5,
						   "Comedy",
                           2025, 
						   "Pradeep Ranganathan",
                           "After a devastating breakup, troubled student Ragavan abandons his studies and enters the dangerous world of financial fraud, pursuing wealth and power while becoming entangled in escalating deception.",
                           "157 min",
                           "Theatres",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Ashwath Marimuthu" LIMIT 1),
                           (select lang_id from languages where Languages = "Tamil" Limit 1)
                           );

insert into movies values ("Hi Nanna",
						    6,
						   "Drama",
                           2023, 
						   "Nani",
                           "A single father begins to narrate the story of the missing mother to his child and nothing remains the same.",
                           "155 min",
                           "Netflix",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Shouryuv" LIMIT 1),
                           (select lang_id from languages where Languages = "Telugu" Limit 1)
                           );

insert into movies values ("Nilavuku Enmel Ennadi Kobam",
						    7,
						   "Romance",
                           2025, 
						   "Mathew Thomas",
                           "A young man on the rebound from a broken relationship accepts his parents' choice of a bride, only for his first-love to reconnect with him.",
                           "136 min",
                           "Theatres",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Dhanush" LIMIT 1),
                           (select lang_id from languages where Languages = "Tamil" Limit 1)
                           );
                           

insert into movies values ("Kudumbasthan",
						    8,
						   "Comedy",
                           2025, 
						   "Manikandan K.",
                           "A lower-middle-class man faces mounting debts and family tensions after losing his job. With a pregnant wife and disapproving in-laws, he must overcome financial struggles and personal conflicts while trying to rebuild his life",
                           "154 min",
                           "Zee5",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Rajeshwar Kaliswamy" LIMIT 1),
                           (select lang_id from languages where Languages = "Tamil" Limit 1)
                           );

insert into movies values ("Rekhachithram",
						    9,
						   "Thriller",
                           2025, 
						   "Asif Ali",
                           "Suspended cop Vivek Gopinath rejoins after gambling scandal. Tasked with solving 40-year-old murder case with faceless victim, he seeks redemption by cracking the long-unsolved mystery.",
                           "147 min",
                           "SonyLiv",
                           (SELECT director_id FROM directors_list WHERE direc_name = "Jofin T. Chacko" LIMIT 1),
                           (select lang_id from languages where Languages = "Malayalam" Limit 1)
                           );
INSERT INTO movies values(
    'Test Movie', 10 , 'Action', 2024, 'Siddharth', 'Sample synopsis',
    '120 min', 'Available', 1, 1, 8.5,
    'https://example.com/trailer', 'Feature Film'
);

-- delete from movies where movie_id = 3;

select * from movies
show create table movies;

insert into directors_list (direc_name, nationality) values( "Christopher Nolan", "American" )
insert into directors_list (director_id, direc_name, nationality) values(1, "Colin Bressler", "United States" )
insert into directors_list (direc_name, nationality) values( "Ashwath Marimuthu", "Indian" )
insert into directors_list (direc_name, nationality) values( "Shouryuv", "Indian" )
insert into directors_list (direc_name, nationality) values( "Dhanush", "Indian" )
insert into directors_list (direc_name, nationality) values( "Rajeshwar Kaliswamy", "Indian" )
insert into directors_list (director_id, direc_name, nationality) values(6, "Jofin T. Chacko", "Indian")

INSERT INTO actors_list values (
	 Null,
    'Manikandan',
    'Indian',
    '1987-09-23',
    'Manikandan is a versatile Tamil actor known for roles in critically acclaimed films like "Jai Bhim" and "Good Night".',
    10,
    'Male',
    'Tamil Nadu State Film Award for Best Actor; Filmfare Critics Award for Best Actor – South'
);

INSERT INTO actors_list VALUES (
	NULL,
    'R. Sundarrajan',
    'Indian',
    '1974-12-29',
    'R. Sundarrajan is a renowned Tamil film director and actor, known for his work in the 1980s and for character roles in recent films.',
    50,
    'Male',
    'Kalaimamani Award; Tamil Nadu State Film Awards'
);

select * from actors_list

INSERT INTO movie_actors_junction values (
  (SELECT movie_id FROM movies WHERE movie_name = "Kudumbasthan" LIMIT 1),
  (SELECT actor_id FROM actors_list WHERE actor_name = "Manikandan" LIMIT 1),
  role_type = 'Lead'
);

INSERT INTO movie_actors_junction values (
  (SELECT movie_id FROM movies WHERE movie_name = "Kudumbasthan" LIMIT 1),
  (SELECT actor_id FROM actors_list WHERE actor_name = 'R. Sundarrajan'  LIMIT 1),
  role_type = 'Supporting'
);

select * from movie_actors_junction

-- delete from directors_list where director_id = 1;

select * from directors_list


insert into top_movies_direc(director_id, movie_id, top_rank)
values( (select director_id from directors_list where direc_name = "Christopher Nolan"),
		(select movie_id from movies where movie_name = "Interstellar"),
        1
        );

select * from top_movies_direc


insert into genere values ( 1, 
							"Sci-Fic" )
insert into genere values ( 2, 
							"Horror" )
insert into genere values ( 3, 
							"Romance" )      
insert into genere values( 4,
						   "Action" )
insert into genere values( 5,
						   "Comedy" )
insert into genere values( 6, 
						   "Adventure" )
insert into genere values( 7,
						   " Crime and Mystery" )
insert into genere values( 8,
						   "Fantasy" )
insert into genere values( 9,
						   "Historical" )
insert into genere values( 10,
						   "Thriller")
insert into genere values( 11,
							"Animation")
insert into genere values( 12,
						   "Drama" )
insert into genere values( 13,
						   "Musical")
insert into genere values (14,
						   "Others")
                   
select * from genere

INSERT INTO movie_genres_junction VALUES 
(
  (SELECT movie_id FROM movies WHERE movie_name = 'Interstellar' LIMIT 1),
  (SELECT genere_id FROM genere WHERE Categories = 'Sci-Fic' LIMIT 1)
),
(
  (SELECT movie_id FROM movies WHERE movie_name = 'Interstellar' LIMIT 1),
  (SELECT genere_id FROM genere WHERE Categories = 'Drama' LIMIT 1)
);

INSERT INTO  movie_genres_junction VALUES 
(
  (SELECT movie_id FROM movies WHERE movie_name = 'The Dark Knight' LIMIT 1),
  (SELECT genere_id FROM genere WHERE Categories = 'Action' LIMIT 1)
),
(
  (SELECT movie_id FROM movies WHERE movie_name = 'The Dark Knight' LIMIT 1),
  (SELECT genere_id FROM genere WHERE Categories = 'Drama' LIMIT 1)
);

select * from movie_genres_junction

insert into languages values ( 1,
							   "Tamil")
insert into languages values ( 2,
							   "Telugu")
insert into languages values ( 3,
							   " English")
insert into languages values ( 4,
							   "Hindi")
insert into languages values ( 5,
							   " Malayalam ")
insert into languages values ( 6,
							   "Kannada" )
insert into languages values ( 7,
							   "Spanish" )
insert into languages values ( 8,
							   " Chineese ")
insert into languages values ( 9,
							   " Korean" )
insert into languages values ( 10,
							   " German " )

                               
select * from languages



insert into streaming_platforms values( 1,
										"Netflix",
                                        "https://www.netflix.com/in/?utm=syndication"
									  )
insert into streaming_platforms values( 2,
										"Prime video",
                                        "https://www.primevideo.com/offers/nonprimehomepage/ref=atv_dl_rdr" 
                                        )
insert into streaming_platforms values( 3,
										"Jio Hotstar",
                                        "https://www.hotstar.com/in/home?ref=%2Fin%2Fmy%2Fhome"
                                        )

select * from streaming_platforms
select * from movies where Availablity = "Netflix"


insert into critics_rating values( 0001, 
								   (select movie_id from movies where movie_name =  "Interstellar"),
                                   "THIS IS A MANKIND ACHIEVEMENT. THE BEST MOVIE EVER MADE, iss ANYONE HAS DOUBT?",
                                   "IMDB",
                                   "https://www.imdb.com/title/tt0816692/reviews/?item=rw5166869&ref_=ext_shr_lnk")

INSERT INTO critics_rating VALUES (
	 0002,
	 (select movie_id from movies where movie_name = "Rekhachithram"),
    'A thrilling masterpiece with outstanding performances and direction.',
    'Times of India',
    'https://timesofindia.indiatimes.com/movie-review/Rekhachithram'
);
desc critics_rating

select * from critics_rating


insert into upcoming_movies values( 1,
									"Good Bad Ugly",
                                    "10.04.2025",
                                    "Theatres"
                                    )
                                    
insert into upcoming_movies values( 2,
							        "TEST",
                                    "04.04.2025",
                                    "Netflix"
                                    )

select * from upcoming_movies


insert into upcoming_reviews values( 1,	
							  (select upcom_movie_id from upcoming_movies where upcom_movie_name = "TEST"),
                              "Expected to come on 04.04.2025 at 3PM"
                              )

select * from upcoming_reviews


insert into best_theatres values( 1,
							"Sathyam Cinemas",
                            "Chennai Royapettah",
                            "Sathyam",
                            "https://www.google.co.in/maps/place/13%C2%B003'19.3%22N+80%C2%B015'28.7%22E/@13.055369,80.2553911,17z/data=!3m1!4b1!4m4!3m3!8m2!3d13.055369!4d80.257966?entry=ttu&g_ep=EgoyMDI1MDMwMy4wIKXMDSoASAFQAw%3D%3D",
                            "TOP 1"
                            )
update best_theatres 
set Best_For = "Sound Quality, 4k Crystal Projection"
where Theatre_id = 1


insert into best_theatres values( 2,
							"Kamala Cinemas",
                            "Chennai Vadapalani",
                            "Screen 1",
                            "https://www.google.co.in/maps/place/13%C2%B003'19.3%22N+80%C2%B015'28.7%22E/@13.055369,80.2553911,17z/data=!3m1!4b1!4m4!3m3!8m2!3d13.055369!4d80.257966?entry=ttu&g_ep=EgoyMDI1MDMwMy4wIKXMDSoASAFQAw%3D%3D",
                            "Best Single Screen",
                            "Punchy Bass, 2k Crystal Projection"
                            )

insert into best_theatres values( 3,
							"Rohini Cinemas",
                            "Chennai Koyambedu",
                            "Screen Rohini",
                            "https://www.bing.com/maps?&ty=18&q=Rohini%20Silver%20Screens&ss=ypid.YN4070x13163605118761076289&mb=13.07871~80.191076~13.072806~80.200732&description=141%2F2%2C%20Poonamallee%20High%20Road%2C%20Chennai%2C%20Tamil%20Nadu%20600107%C2%B7Cinema&cardbg=%23219AB6&dt=1742200200000&tt=Rohini%20Silver%20Screens&tsts0=%2526ty%253D18%2526q%253DRohini%252520Silver%252520Screens%2526ss%253Dypid.YN4070x13163605118761076289%2526mb%253D13.07871~80.191076~13.072806~80.200732%2526description%253D141%25252F2%25252C%252520Poonamallee%252520High%252520Road%25252C%252520Chennai%25252C%252520Tamil%252520Nadu%252520600107%2525C2%2525B7Cinema%2526cardbg%253D%252523219AB6%2526dt%253D1742200200000&tstt0=Rohini%20Silver%20Screens&cp=13.075758~80.193243&lvl=17&pi=0&ftst=0&ftics=False&v=2&sV=2&form=S00027",
                            "Best For FDFS",
                            "Decent sound and picture quality"
                            )


insert into best_theatres values( 4,
							"PVR Pallazo",
                            "Chennai Vadapalani",
                            "Screen 5",
                            "https://www.bing.com/maps?&ty=18&q=Rohini%20Silver%20Screens&ss=ypid.YN4070x13163605118761076289&mb=13.07871~80.191076~13.072806~80.200732&description=141%2F2%2C%20Poonamallee%20High%20Road%2C%20Chennai%2C%20Tamil%20Nadu%20600107%C2%B7Cinema&cardbg=%23219AB6&dt=1742200200000&tt=Rohini%20Silver%20Screens&tsts0=%2526ty%253D18%2526q%253DRohini%252520Silver%252520Screens%2526ss%253Dypid.YN4070x13163605118761076289%2526mb%253D13.07871~80.191076~13.072806~80.200732%2526description%253D141%25252F2%25252C%252520Poonamallee%252520High%252520Road%25252C%252520Chennai%25252C%252520Tamil%252520Nadu%252520600107%2525C2%2525B7Cinema%2526cardbg%253D%252523219AB6%2526dt%253D1742200200000&tstt0=Rohini%20Silver%20Screens&cp=13.075758~80.193243&lvl=17&pi=0&ftst=0&ftics=False&v=2&sV=2&form=S00027",
                            "Best For IMAX",
                            "BEST FOR CINEMATIC EXPERINECE"
                            )

insert into best_theatres values( 5,
							"PVR INOX Luxe",
                            "Chennai Velechery",
                            "Screen 1",
                            "https://www.bing.com/maps?&ty=18&q=Luxe&ss=ypid.YN4070x2947806435080940425&mb=12.994266~80.211729~12.988359~80.221385&description=2nd%20Floor%2C%20Phoenix%20Market%20City%20142%2C%20Velachery%20Main%20Road%2C%20Chennai%2C%20Tamil%20Nadu%20600042%C2%B7Cinema&cardbg=%23219AB6&dt=1742200200000&tt=Luxe&tsts0=%2526ty%253D18%2526q%253DLuxe%2526ss%253Dypid.YN4070x2947806435080940425%2526mb%253D12.994266~80.211729~12.988359~80.221385%2526description%253D2nd%252520Floor%25252C%252520Phoenix%252520Market%252520City%252520142%25252C%252520Velachery%252520Main%252520Road%25252C%252520Chennai%25252C%252520Tamil%252520Nadu%252520600042%2525C2%2525B7Cinema%2526cardbg%253D%252523219AB6%2526dt%253D1742200200000&tstt0=Luxe&cp=12.991313~80.213896&lvl=17&pi=0&ftst=0&ftics=False&v=2&sV=2&form=S00027",
                            "Best For IMAX",
                            "Decent FOR CINEMATIC EXPERINECE, 2k Projection"
                            )
						
                            
select * from best_theatres
select * from best_theatres where Ratings = "TOP 1"

INSERT INTO theatre_features (feature_name) 
VALUES 
('IMAX'),
('Dolby Atmos'),
('Dolby Atmos 7.1'),
('Comfortable Seats'),
('Fans Celebrations'),
('Luxury Ambience'),
('3D'),
('4k RGB Lazer Projection'),
('Budget Friendly');

select * from theatre_features

INSERT INTO theatre_best_for (theatre_id, feature_id) 
VALUES 
((SELECT Theatre_id FROM best_theatres WHERE Theatre_name ="Sathyam Cinemas"),
 (SELECT feature_id FROM theatre_features WHERE feature_name = '4k RGB Lazer Projection')),
((SELECT Theatre_id FROM best_theatres WHERE Theatre_name ="Sathyam Cinemas"),
 (SELECT feature_id FROM theatre_features WHERE feature_name = 'Dolby Atmos')),
((SELECT Theatre_id FROM best_theatres WHERE Theatre_name ="PVR Pallazo"),
 (SELECT feature_id FROM theatre_features WHERE feature_name = '4k RGB Lazer Projection')),
((SELECT Theatre_id FROM best_theatres WHERE Theatre_name ="PVR Pallazo"),
 (SELECT feature_id FROM theatre_features WHERE feature_name = 'Dolby Atmos'));
((SELECT Theatre_id FROM best_theatres WHERE Theatre_name ="PVR Pallazo"),
 (SELECT feature_id FROM theatre_features WHERE feature_name = 'IMAX'));


insert into Notification values( 01,
						  1,
                          " Latest Update...... Kingston (TAMIL) Movie is releasing Tomorrow accorss Worldwide. Reviews are Expected to Be out at 1.00PM ",
                          current_timestamp
                          );

select * from Notification

INSERT INTO watchlist VALUES
(Null, (select movie_id from movies where movie_name = "Rekhachithram"),  CURDATE(), 'high', false),
(Null, (select movie_id from movies where movie_name =  "Interstellar"),  CURDATE(), 'medium', true);

select * from watchlist
insert into user_preferences values (
									NULL, 
									(select User_id from users where Name = "Allen Jacob" LIMIT 1),
									'["Thriller", "Mystery"]',
									'["Tamil"]',
									'["Vijay"]',
									'["Lokesh Kanagaraj"]',
									15
								);

select * from user_preferences


insert into user_reviews VALUES(
	 NULL, 
	(select User_id from users where Name = "Allen Jacob" LIMIT 1),
	(select movie_id from movies where movie_name = "Rekhachithram"),
	8.5, 'Great storyline and performances. Really enjoyed it!',
    default);
select * from user_reviews
