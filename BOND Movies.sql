CREATE TABLE bond (
id INT PRIMARY KEY,
title VARCHAR(50) UNIQUE,
released INT NOT NULL,
actor VARCHAR(30),
director VARCHAR(30),
box_office Decimal(5,1) DEFAULT "0.0"
);
drop TABLE bond

INSERT INTO bond VALUES(
1, "DR.NO", 1962, "SEAN CONNERY", "Terence Young", 59.5
2, "From Russian With Love", 1963
);

INSERT INTO bond(id, title,released) VALUES(
2, "From Russian With Love", 1963
)

ALTER TABLE bond ADD studio VARCHAR(30); 

 UPDATE bond
 SET actor="Connery"
 where actor="Sean Connery"
 
 DELETE FROM bond WHERE title="DR.NO"