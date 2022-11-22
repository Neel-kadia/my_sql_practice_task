CREATE TABLE books(
	book_id int NOT NULL AUTO_INCREMENT,
    book_name varchar(255) NOT NULL,
    author_name varchar(255) NOT NULL,
    book_price int NOT NULL,
    published_date date NOT NULL,
    published_city varchar(255) NOT NULL,
    published_country varchar(255) NOT NULL,
    PRIMARY KEY (book_id)
);

INSERT INTO books (book_name, author_name, book_price, published_date, published_city, published_country)
		VALUES ('sarasvati gift','kavita kane','399','1998-12-03','Gujarat','India'),
			('40 years with abdul kalam','Dr.A sivathanu','499','1887-05-25','tamilnadu','india'),
            ('guru nanak dev','kripal singh ji','250','1986-06-23','punjab','india'),
            ('fight against covid 19','randeep guleria','489','2021-12-28','delhi','india'),
            ('48 law of power','robert greene','450','1778-05-04','berlin','germany'),
            ('think and grow rich','nepoleon hill','599','1885-09-08','london','U.k'),
            ('power of now','eckhart tolle','650','1868-08-03','madrid','spain');
        
SELECT * FROM books;

SELECT book_id,book_name, author_name, book_price, published_date, published_city, published_country FROM books;

SELECT * FROM books WHERE book_price BETWEEN 400 AND 500;

SELECT * FROM books WHERE published_country = 'india';

SELECT COUNT(book_name) AS total_book FROM books;

SELECT DISTINCT published_country,published_city FROM books;

SELECT author_name FROM books WHERE published_country = 'india';

SELECT * FROM books WHERE published_country = 'india' OR published_country = 'germany';

SELECT * FROM books WHERE book_price > 400;

SELECT SUM(book_price) AS total_price FROM books WHERE published_country = 'india';