create database Cinephile
use Cinephile

create table users( 
Name varchar(100), 
User_id int primary key ,
Mail_id varchar(60), 
Password varchar(100),
DOB varchar(15)
);
insert into users values( "Allen Jacob" , 001, "allenjaco@gmail.com" , "jacob973y" , " 12/03/2004");
select * from users

create table movies(
movie_name varchar(100),
movie_id int primary key,
genre varchar(50),
Year int,
director varchar(100),
actor varchar(50),
synopsis text,
);
alter table movies add column runtime varchar(50)
insert into movies values( "Interstellar", 1 , "Sci-fic/Adventure", 2014 , "Chrirstopher Nolan" , "Ellen Burstayn" ,
 'The film follows Cooper a former NASA pilot who is tasked with leading a mission through a wormhole to find a habitable planet in another galaxy'); 
update movies
set runtime = " 169 minutes "
where movie_id= 1;
select * from movies

