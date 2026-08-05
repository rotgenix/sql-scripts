-- PRIMARY KEY
-- Table with PRIMAY KEY
CREATE TABLE personal(
	id INT not null AUTO_INCREMENT,
    name VARCHAR(50) not null,
    age INT not null,
    city VARCHAR(12) not null,
    primary KEY(id)
);

-- Alter table
-- used on already created tables
alter table tab_name
add primary key (id);


-- FOREIGN KEY
-- Table with FOREIGN KEY
CREATE TABLE personal(
	id INT not null AUTO_INCREMENT,
    name VARCHAR(50) not null,
    age INT not null,
    city VARCHAR(12) not null,
    primary KEY(id),
    foreign key (city) references city (cid);
);

-- Alter table
-- used on already created tables
alter table tab_name
add foreign key (city) references city (cid);