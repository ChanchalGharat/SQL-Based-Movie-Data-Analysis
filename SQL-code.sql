create table Movies_reviews
(
	"movie_id" int8 primary key,
	"movie_title" varchar(50),
	"imdb_rating" float,
	"reviews" varchar(60)
);

select * from Movies_reviews

Insert into Movies_reviews
(movie_id,movie_title,IMDb_rating,Reviews)
values
(1,'Airlift',7.9,'very nice movie'),
(2,'Azhar',5.6,'Not so good '),
(3,'Bajarangi Bhaijan',9.1,'This is so heart tuching i love this movie'),
(4,'Bajirao Mastani',7.3,'Nice movie'),
(5,'Baby',7.9,'Action is so good here'),
(6,'Dilwale',5.1,'very bad movie'),
(7,'Baahubali:the begining',8,'amazing movie very good acting by all'),
(8,'the 400 blows',8.1,'grate movie'),
(9,'le haine',8.1,'soo happy to see this movie'),
(10,'The godfather',9.2,'amazing performance'),
(11,'Man bites dog',7.4,'good work guys'),
(12,'the departure',8.5,'acting is good'),
(13,'Umberto B',8.2,'Nice work '),
(14,'white heate',7.1,'grate work guys'),
(15,'meddile',3.5,'what is this movie so bad');

create table Movies_name
(
	"movie_id" int8 primary key,
	"movie_title" varchar(50),
	"release_year" integer,
	"director" varchar(60)
);

select * from Movies_name

Insert into Movies_name
(movie_id,movie_title,release_year,director)
values
--(1,'Airlift',2016,'Raja memon')
(2,'Azhar',2016,'Anthony Dsouza '),
(3,'Bajarangi Bhaijan',2015,'Kabir khan'),
(4,'Bajirao Mastani',2015,'Sanjay leela bhansali'),
(5,'Baby',2015,'Neeraj panday'),
(6,'Dilwale',2015,'Rohit shetty'),
(7,'Baahubali:the begining',2015,'S.S.Rajamouli'),
(8,'the 400 blows',1959,'Francois truffaut'),
(9,'le haine',1995,'Mathieu Kassovitz'),
(10,'The godfather',1972,'Francis frod coppola'),
(11,'Man bites dog',1992,'Remy Belvaux'),
(12,'the departure',2006,'Martin Scorsese'),
(13,'Umberto B',1952,'Vittorio De sica '),
(14,'white heate',1949,'Raoul Walsh'),
(15,'meddile',1987,'Robert Townsend');

create table Amount
(
	"total_price" int8 primary key,
	"movie_title" varchar(50),
	"artist_name" varchar(50),
	"duration" INTERVAL
);

select * from Amount

Insert into Amount
(total_price,movie_title,artist_name,duration)
values
(30000000,'Airlift','Akshay Kumar & Nimrat Kaur','2 hours,10 minutes'),
(38000000,'Azhar','Imaran Hashmi & Nargis & Prachi Deshai ','2 hours,10 minutes'),
(90000000,'Bajarangi Bhaijan','Salman Khan','2 hours,43 minutes'),
(14500000,'Bajirao Mastani','Ranweer Shing & Priyanka Chopra & Deepika Padukod','2 hours,38 minutes'),
(58000000,'Baby','Akashya Kumar','2 hours,49 Minutes'),
(16500000,'Dilwale','Sahrukh Khan & kajol','2 hours,38 minutes'),
(18000000,'Baahubali:the begining','Prabhash & tammana bhatt','2 hours,39 minutes'),
(280000,'the 400 blows','Jean-pierre & albert Remy','1 hours,38 minutes'),
(25900000,'le haine','Vincent Cassel','1 hours,38 minutes'),
(60000000,'The godfather','Marlon Brando & Ai pacino','2 hours,55 minutes'),
(3300000,'Man bites dog','Benoit Poelvoore','1 hours,36 minutes'),
(96000000,'the departure','Leonardo Dicaprio','2 hours,36 minutes'),
(1300000,'Umberto B','Carlo Battisti','1 hours,39 minutes'),
(1000000,'white heate','Jamse Cagney & Virginia Mayo','1 hours,54 minutes'),
(1100000,'meddile','Eddie Morphy','2 hours');


create table Rating 
(
	"movie_id" int8 primary key,
	"imdb_rating" float,
	"platform" varchar(50),
	"reviews" varchar(60)
);

select * from Rating
	
Insert into Rating
(movie_id,imdb_rating,platform,reviews)
values
(1,7.9,'Theater','very nice movie'),
(2,5.6,'Theater','Not so good '),
(3,9.1,'Theater','This is so heart tuching i love this movie'),
(4,7.3,'Theater','Nice movie'),
(5,7.9,'Theater','Action is so good here'),
(6,5.1,'Theater','very bad movie'),
(7,8,'Theater','amazing movie very good acting by all'),
(8,8.1,'Theater','grate movie'),
(9,8.1,'Theater','soo happy to see this movie'),
(10,9.2,' Theater','amazing performance'),
(11,7.4,'Theater','good work guys'),
(12,8.5,'Theater','acting is good'),
(13,8.2,'Theater','Nice work '),
(14,7.1,'Theater','grate work guys'),
(15,3.5,'Theater','what is this movie so bad');


create table Artist
(
	"artist_id" int8 primary key,
	"movie_title" varchar(50),
	"star_artist_name" varchar(50)
);

select * from Artist

Insert into Artist
(artist_id,movie_title,Star_artist_name)
values
(300,'Airlift',' Nimrat Kaur'),
(380,'Azhar','Imaran Hashmi '),
(90,'Bajarangi Bhaijan','Salman Khan'),
(145,'Bajirao Mastani',' Deepika Padukod'),
(580,'Baby','Akashya Kumar'),
(160,'Dilwale','Sahrukh Khan'),
(18,'Baahubali:the begining','Prabhash'),
(28,'the 400 blows','Jean-pierre '),
(259,'le haine','Vincent Cassel'),
(60,'The godfather',' Ai pacino'),
(33,'Man bites dog','Benoit Poelvoore'),
(96,'the departure','Leonardo Dicaprio'),
(13,'Umberto B','Carlo Battisti'),
(10,'white heate','Jamse Cagney '),
(11,'meddile','Eddie Morphy');

--Q - merge all the column of different tables unique ones.

CREATE VIEW combined_view AS
SELECT
    t1.movie_id AS movies_name_id,
    t1.Movie_title AS movies_name_name,
    t1.release_year AS movies_name_year,
    t1.director AS movies_name_director,
    t2.imdb_rating AS movies_reviews_rating,
    t2.reviews AS movies_reviews_reviews,
	t3.platform AS rating_platform,
    t4.total_price AS amount_tp,
    t4.artist_name AS amount_artrist_name,
    t4.duration AS amount_duration,
	t5.artist_id AS artist_id,
    t5.star_artist_name AS star_artist_name
FROM
    movies_name t1
FULL OUTER JOIN
    Movies_reviews as t2 ON t1.Movie_id = t2.Movie_id
FULL OUTER JOIN
    rating t3 ON t1.movie_id = t3.movie_id
FULL OUTER JOIN
    amount t4 ON t1.movie_title = t4.movie_title
FULL OUTER JOIN
    artist t5 ON t1.movie_title = t5.movie_title;

select * from combined_view

-- Q- which movie get the highest rating also give the 
	--director name , release year and movie name 
	--( here we analyse this question for 1st and top 5 highest rating)
select imdb_rating 
from rating order by imdb_rating desc
limit 5;

select nam.movie_title, rev.imdb_rating, nam.director, nam.release_year
from movies_reviews as rev 
JOIN movies_name as nam 
	ON rev.movie_id = nam.movie_id
order by rev.imdb_rating desc
limit 5;

SELECT nam.movie_title,rev.imdb_rating, nam.director, nam.release_year
FROM movies_reviews AS rev
JOIN movies_name AS nam ON rev.movie_id = nam.movie_id
ORDER BY rev.imdb_rating DESC
LIMIT 1;

-- which movie has the highest cost of making a movie

select * 
from amount 
over order by total_price desc
limit 1;

--on the basis of highest rating the 
--movie director want to give a success party to the team and the artist

select rev.movie_title, rev.imdb_rating, nam.director, am.artist_name 
from movies_reviews as rev
join movies_name as nam on rev.movie_title = nam.movie_title
join amount as am on rev.movie_title = am.movie_title
order by imdb_rating desc
limit 3;


--Q--write a query that shoe the movies reviews given by the audiance 
--and the movie name and id . arrange than in order of rating.

select movie_title,imdb_rating,movie_id,reviews 
from movies_reviews 
order by imdb_rating asc    ---- ascending 

select * from movies_reviews --- if order by id then this only 
order by imdb_rating desc    ---order by rating descresing(descnding)

--Q--write a query that return who is the star artist in the highest 5 and lowest 5 rated movies
--and also written there co_stars.what is the  rating of that movies and movie id .

select A.artist_id, am.artist_name, A.star_artist_name, rev.imdb_rating, A.movie_title 
from artist as A
join amount as am on A.movie_title = am.movie_title
join movies_reviews as rev on A.movie_title = rev.movie_title
order by imdb_rating desc
limit 5;
--for ascending order 
select A.artist_id, am.artist_name, A.star_artist_name, rev.imdb_rating, A.movie_title 
from artist as A
join amount as am on A.movie_title = am.movie_title
join movies_reviews as rev on A.movie_title = rev.movie_title
order by imdb_rating asc
limit 5
 ---- this part is for showing all the values in the table
select A.artist_id, am.artist_name, rev.imdb_rating, A.movie_title 
from artist as A
join amount as am on A.movie_title = am.movie_title
join movies_reviews as rev on A.movie_title = rev.movie_title;


-- average of duration 

select avg(duration) from amount
select duration from amount 
order by duration desc

--Q-- which movie has the longest duration and what is the review and rating of that movie
--retun there cost of maney for making the movie also.

select A.movie_title, A.duration, rev.reviews, A.total_price
from amount as A
join movies_reviews as rev on A.movie_title = rev.movie_title
order by duration desc

--Q analyse the reviews and rating

select movie_title,imdb_rating, reviews
from movies_reviews
WHERE reviews LIKE '%grate%' OR reviews LIKE '%excellent%' OR reviews LIKE '%awesome%'
   OR reviews LIKE '%amazing%' OR reviews LIKE '%fantastic%' OR reviews LIKE '%superb%'
   OR reviews LIKE '%good%' OR reviews LIKE '%love%' OR reviews LIKE '%happy%'
   OR reviews LIKE '%wonderful%' OR reviews LIKE '%Nice%' or reviews like '%nice%'
   -- Add more positive keywords as needed
   ;
select movie_title,imdb_rating, reviews
from movies_reviews
where reviews like '%Not so good%' or reviews like '%bad%' or reviews like  '%ok%'
;

--Q--Write query that determines the director that has spent the most on movies 
--and order by duration.

select nam.director, nam.movie_id, nam.movie_title,A.total_price, A.duration
from movies_name as nam
join amount as A on nam.movie_title = A.movie_title
order by duration desc





