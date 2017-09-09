/* Create Database */

CREATE Database data_science_assignment;

/* Use Database */

USE data_science_assignment;

/* Drop tables if they exist */

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS description;


/* Create Tables Portion of the Script */

create table  movies (
	movie_number integer PRIMARY KEY,
    movie_title varchar(100),
    viewer varchar(100),
    rating integer
    );
    
create table genre (
	movie_number integer PRIMARY KEY,
    genre_id integer,
	genre_type varchar(100)
    );

create table description (
		genre_id integer PRIMARY KEY,
        genre_description varchar(1000)
        );
        
/* Insert values into the table */

insert into movies VALUES (1, "Alien: Covenant", "Monty Python",3);
insert into movies VALUES (2,	"Logan", "Tommy Gunn",5);
insert into movies VALUES (3,	"Get Out","Gunny Nelson", 5);
insert into movies VALUES (4,	"Annabelle: Creation","Peter Parker", 2);
insert into movies VALUES (5,	"It","Jane Doe",4);
insert into movies VALUES (6,	"The Emoji Movie","John Hancock",1);


insert into genre VALUES (1,	1,"Sci-Fi");
insert into genre VALUES (2,	2,"Drama");
insert into genre VALUES (3,	3,"Thriller");
insert into genre VALUES (4,	4,"Horror");
insert into genre VALUES (5,	4,"Horror");
insert into genre VALUES (6,    5,"Adventure");

insert into description VALUES (1, "a genre of fiction in which the stories often tell about science and technology of the future.");
insert into description VALUES (2,	"a film that focuses on imperiled characters dealing with realistic emotional struggles, often involving dysfunctional family relations");
insert into description VALUES (3,	"characterized and defined by the moods they elicit, giving viewers heightened feelings of suspense, excitement, surprise, anticipation and anxiety.");
insert into description VALUES (4, "are unsettling films designed to frighten and panic, cause dread and alarm, and to invoke our hidden worst fears, often in a terrifying, shocking finale, while captivating and entertaining us at the same time in a cathartic experience.");
insert into description VALUES (5, "exciting stories, with new experiences or exotic locales.");


    