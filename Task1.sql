CREATE TABLE Wildlife (
    wildlife_id INT,
    name VARCHAR(50),
    state_name VARCHAR(30),
    location VARCHAR(50),
    area_sq_km BIGINT,
    established_year INT,
    famous_for VARCHAR(50),
    major_animals VARCHAR(100),
    nearest_city VARCHAR(30),
    no_of_species INT
);


SELECT * FROM Wildlife;

DESC Wildlife;

INSERT INTO Wildlife VALUES (1, 'Bandipur National Park', 'Karnataka', 'Chamarajanagar', 874, 1974, 'Tigers & Elephants', 'Tiger, Elephant, Leopard, Deer', 'Mysuru', 200);
INSERT INTO Wildlife VALUES (2, 'Nagarhole National Park', 'Karnataka', 'Kodagu & Mysuru', 643, 1955, 'Elephants & Teak Forests', 'Elephant, Gaur, Leopard, Dhole', 'Hunsur', 250);
INSERT INTO Wildlife VALUES (3, 'Bhadra Wildlife Sanctuary', 'Karnataka', 'Chikkamagaluru & Shivamogga', 492, 1974, 'Bhadra River & Wildlife', 'Tiger, Leopard, Elephant, Wild Dog', 'Chikkamagaluru', 120);
INSERT INTO Wildlife VALUES (4, 'Dandeli Wildlife Sanctuary', 'Karnataka', 'Uttara Kannada', 866, 1956, 'Dense Forests & Hornbills', 'Black Panther, Sloth Bear, Hornbill', 'Dandeli', 270);
INSERT INTO Wildlife VALUES (5, 'Bannerghatta National Park', 'Karnataka', 'Bengaluru Urban', 260, 1971, 'Zoo & Butterfly Park', 'Lion, Tiger, Elephant, Bear', 'Bengaluru', 120);
INSERT INTO Wildlife VALUES (6, 'Kudremukh National Park', 'Karnataka', 'Chikkamagaluru', 600, 1987, 'Scenic Grasslands & Iron Ore', 'Tiger, Leopard, Malabar Civet', 'Kudremukh', 150);
INSERT INTO Wildlife VALUES (7, 'Sharavathi Valley Wildlife Sanctuary', 'Karnataka', 'Shivamogga', 431, 1972, 'Jog Falls & Rich Flora', 'Lion-tailed Macaque, Tiger, Leopard', 'Sagara', 110);
INSERT INTO Wildlife VALUES (8, 'Anshi National Park', 'Karnataka', 'Uttara Kannada', 340, 1987, 'Evergreen Forests & Black Panther', 'Elephant, Tiger, Black Panther', 'Karwar', 90);
INSERT INTO Wildlife VALUES (9, 'Someshwara Wildlife Sanctuary', 'Karnataka', 'Udupi & Dakshina Kannada', 88, 1974, 'Agumbe Rainforest', 'King Cobra, Lion-tailed Macaque', 'Agumbe', 70);
INSERT INTO Wildlife VALUES (10, 'BRT Wildlife Sanctuary', 'Karnataka', 'Chamarajanagar', 540, 1974, 'Biligiriranga Hills', 'Elephant, Tiger, Sambar Deer', 'Chamarajanagar', 180);
INSERT INTO Wildlife VALUES (11, 'Ranganathittu Bird Sanctuary', 'Karnataka', 'Mandya', 57, 1940, 'Migratory Birds', 'Painted Stork, Spoonbill, Pelican', 'Srirangapatna', 170);
INSERT INTO Wildlife VALUES (12, 'Pushpagiri Wildlife Sanctuary', 'Karnataka', 'Kodagu', 102, 1987, 'Western Ghats & Birds', 'Hornbill, Nilgiri Marten', 'Madikeri', 150);
INSERT INTO Wildlife VALUES (13, 'Mookambika Wildlife Sanctuary', 'Karnataka', 'Udupi', 370, 1974, 'Sacred Forests', 'Tiger, Leopard, Slender Loris', 'Kollur', 130);
INSERT INTO Wildlife VALUES (14, 'Brahmagiri Wildlife Sanctuary', 'Karnataka', 'Kodagu', 181, 1974, 'Brahmagiri Hills & Streams', 'Elephant, Gaur, Lion-tailed Macaque', 'Virajpet', 140);
INSERT INTO Wildlife VALUES (15, 'Talacauvery Wildlife Sanctuary', 'Karnataka', 'Kodagu', 105, 1987, 'Origin of River Cauvery', 'Tiger, Elephant, Gaur', 'Bhagamandala', 110);
INSERT INTO Wildlife VALUES (16, 'Melkote Wildlife Sanctuary', 'Karnataka', 'Mandya', 45, 1974, 'Wolf & Dry Forests', 'Striped Hyena, Leopard, Wolf', 'Melkote', 60);
INSERT INTO Wildlife VALUES (17, 'Arabithittu Wildlife Sanctuary', 'Karnataka', 'Mysuru', 13, 1985, 'Small Protected Area', 'Leopard, Deer, Sloth Bear', 'Mysuru', 40);
INSERT INTO Wildlife VALUES (18, 'Jayamangali Blackbuck Reserve', 'Karnataka', 'Tumakuru', 36, 2007, 'Blackbucks & Grasslands', 'Blackbuck, Wolf, Fox', 'Madhugiri', 80);
INSERT INTO Wildlife VALUES (19, 'Daroji Sloth Bear Sanctuary', 'Karnataka', 'Ballari', 83, 1994, 'Sloth Bears & Rocky Hills', 'Sloth Bear, Leopard, Pangolin', 'Hampi', 70);
INSERT INTO Wildlife VALUES (20, 'Adichunchanagiri Wildlife Sanctuary', 'Karnataka', 'Mandya', 30, 1981, 'Peacocks & Sacred Grove', 'Peacock, Hare, Leopard', 'Nagamangala', 50);


SELECT * FROM Wildlife WHERE famous_for = 'Tigers & Elephants';

SELECT * FROM Wildlife WHERE area_sq_km > 500;

SELECT * FROM Wildlife WHERE established_year < 1980;

SELECT * FROM Wildlife WHERE nearest_city = 'Mysuru';

SELECT * FROM Wildlife WHERE no_of_species > 150;

SELECT * FROM Wildlife WHERE area_sq_km > 500 AND no_of_species > 150;

SELECT * FROM Wildlife WHERE famous_for = 'Sugarcane' AND nearest_city = 'Mandya';  -- (example, you can adjust values as per your data)

SELECT name, wildlife_id FROM Wildlife WHERE established_year < 1980 AND area_sq_km > 400;

SELECT * FROM Wildlife WHERE nearest_city = 'Karwar' AND major_animals LIKE '%Black Panther%';

SELECT * FROM Wildlife WHERE wildlife_id = 5 AND name = 'Bannerghatta National Park';
SELECT * FROM Wildlife WHERE famous_for = 'Tigers & Elephants' OR nearest_city = 'Bengaluru';

SELECT * FROM Wildlife WHERE area_sq_km > 800 OR established_year < 1975;

SELECT * FROM Wildlife WHERE no_of_species > 200 OR area_sq_km > 600;

SELECT * FROM Wildlife WHERE no_of_species < 100 OR established_year > 1990;

SELECT * FROM Wildlife WHERE area_sq_km < 100 OR famous_for = 'Bird Sanctuary';

SELECT * FROM Wildlife WHERE wildlife_id IN (1, 3, 5, 7, 9, 11);

SELECT * FROM Wildlife WHERE famous_for IN ('Bird Sanctuary', 'Coffee Plantations');

SELECT * FROM Wildlife WHERE nearest_city IN ('Mysuru', 'Bengaluru', 'Karwar');

SELECT * FROM Wildlife WHERE no_of_species IN (70, 120, 200);

SELECT * FROM Wildlife WHERE wildlife_id IN (2, 4, 6, 8, 10, 12, 14, 16, 18, 20);
SELECT * FROM Wildlife WHERE wildlife_id NOT IN (1, 5, 6, 7, 13, 15, 19);

SELECT * FROM Wildlife WHERE famous_for NOT IN ('Tigers & Elephants', 'Bird Sanctuary');

SELECT * FROM Wildlife WHERE nearest_city NOT IN ('Mysuru', 'Bengaluru', 'Karwar');

SELECT * FROM Wildlife WHERE no_of_species NOT IN (70, 120, 200);

SELECT * FROM Wildlife WHERE wildlife_id NOT IN (2, 4, 6, 8, 10, 12, 14, 16, 18, 20);

SELECT * FROM Wildlife WHERE area_sq_km BETWEEN 300 AND 700;

SELECT * FROM Wildlife WHERE wildlife_id IN (5, 10, 15, 20) AND name BETWEEN 'B' AND 'M';

SELECT * FROM Wildlife WHERE established_year BETWEEN 1950 AND 1980;

SELECT * FROM Wildlife WHERE no_of_species BETWEEN 100 AND 200;

SELECT * FROM Wildlife WHERE famous_for BETWEEN 'A' AND 'G';

SELECT * FROM Wildlife WHERE area_sq_km NOT BETWEEN 300 AND 700;

SELECT * FROM Wildlife WHERE wildlife_id IN (5, 10, 15, 20) AND name NOT BETWEEN 'B' AND 'M';

SELECT * FROM Wildlife WHERE established_year NOT BETWEEN 1950 AND 1980;

SELECT * FROM Wildlife WHERE no_of_species NOT BETWEEN 100 AND 200;

SELECT * FROM Wildlife WHERE famous_for NOT BETWEEN 'A' AND 'G';



-- 2nd

Create table District ( 
district_id int ,
district_name varchar(20),
state_name varchar(20),
capital_city varchar(20),
population_total bigint,
area_sq_km bigint,
famous_for varchar(20),
major_crop varchar(20),
major_river varchar(20),
no_of_taluk int);
select * from district;

desc district;

ALTER table district rename column capital_city  to tourist_attractive_places ;


INSERT into district values (1,'Mysore','Karnataka','Mysore palace',3001127,6854,'silk & sandalwood','Ragi','Kaveri',7);
insert into district values(2,'Bengaluru','Karnataka','Lalbagh Garden',    9621551, 2196,  'IT Hub', 'Ragi','Arkavathi', 5);
insert into district values(3, 'Belagavi','Karnataka','Gokak Falls', 4779661, 13415, 'Sugar Industry','Sugarcane', 'Ghataprabha', 10);
insert into district values(4, 'Dharwad','Karnataka', 'Unkal Lake',1847023, 4260,'Education Hub','Cotton','Malaprabha', 5);
insert into district values(5,'Udupi','Karnataka', 'Krishna Temple', 1177361, 3880, 'Temples & Cuisine', 'Paddy','Swarnamukhi', 3);
insert into district values(6,'Kodagu','Karnataka', 'Raja Seat',  554762, 4102,  'Coffee Plantations','Coffee','Kaveri', 3);
insert into district values(7, 'Kalaburagi','Karnataka', 'Gulbarga Fort', 2566326, 10951, 'Red Soil', 'Tur Dal','Bhima',  7);
insert into district values(8,'Raichur', 'Karnataka', 'Raichur Fort', 1935184, 6827,  'Thermal Power','Cotton', 'Krishna', 5);
insert into district values(9,'Tumakuru', 'Karnataka', 'Devarayanadurga', 2980000, 10597, 'Coconut',  'Groundnut', 'Jayamangali', 10);
insert into district values(10, 'Chikkamagaluru','Karnataka','Mullayanagiri', 1137000, 7201,  'Coffee',  'Coffee',    'Bhadra',      7);
insert into district values(10, 'Kolar', 'Karnataka', 'Kolar Gold Fields', 1540231, 3966,  'Gold Mining', 'Ragi', 'Palar',  5);
insert into district values(12, 'Mandya', 'Karnataka', 'Brindavan Gardens', 1808680, 4962,  'Sugarcane', 'Sugarcane', 'Kaveri', 7);
insert into district values(13, 'Vijayapura',   'Karnataka', 'Gol Gumbaz',2177331, 10541, 'Heritage Monuments','Jowar', 'Krishna',     7);
insert into district values(14, 'Bidar','Karnataka', 'Bidar Fort',  1703300, 5448,  'Historical Forts',  'Tur Dal',   'Manjra',  5);
insert into district values(15, 'Hassan', 'Karnataka', 'Belur Temples',     1776221, 6814,  'Hoysala Temples',   'Coffee',    'Hemavati',    8);
insert into district values(16, 'Ballari', 'Karnataka', 'Hampi',   2532383, 8447,  'Iron Ore Mining',   'Cotton',  'Tungabhadra', 7);
insert into district values(17, 'Shivamogga','Karnataka', 'Jog Falls',1796228, 8478,  'Areca Nut', 'Arecanut',  'Tunga',  7);
insert into district values(18, 'Davanagere', 'Karnataka', 'Kunduvada Lake', 1946909, 5924,  'Textile Hub','Cotton',    'Tungabhadra', 6);
insert into district values(19, 'Chitradurga',  'Karnataka', 'Chitradurga Fort',  1660378, 8437,  'Fort & Wind Power', 'Groundnut', 'Vedavati',    6);
insert into district values(20, 'Gadag',  'Karnataka', 'Trikuteshwara',1065235, 4656,  'Temples',  'Jowar','Malaprabha',  5);

-- where

select * from district where major_crop='ragi';

select * from district where population_total>'3000000';

select * from district where major_river='kaveri';

select* from district where no_of_taluk =7;

select * from district where area_sq_km>10000;



select * from district where population_total>3000000 and no_of_taluk=7; 

select * from district where major_crop='sugarcane' and major_river='kaveri';

select district_name , district_id from district where population_total>2500000 and area_sq_km>5000;

select * from district where major_river='krishna' and major_crop='cotton';

select * from district where district_id= 10 and district_name='kolar';


select * from district where major_crop= 'ragi' or major_river='palar';

select * from district where area_sq_km>10000 or population_total>3200000;

select * from district where no_of_taluk >7 or population_total>3000000; 

select * from district where no_of_taluk <3 or population_total<3000000; 

select * from district where area_sq_km<3500 or major_river='kaveri';



select * from district where district_id in (1,5,6,7,13,15,19);

select * from district where major_crop in ('ragi','coffee');

select * from district where major_river in ('krishna', 'kaveri','bhadra');

select * from district where no_of_taluk in (3,10);

select * from district where district_id in (1,3,5,7,9,11,13,15,17,19);


select * from district where district_id not in (1,5,6,7,13,15,19);

select * from district where major_crop not in ('ragi','coffee');

select * from district where major_river not in ('krishna', 'kaveri','bhadra');

select * from district where no_of_taluk not in (3,10);

select * from district where district_id not in (1,3,5,7,9,11,13,15,17,19);


select * from district where area_sq_km between 6500 and 10000;

select * from district where district_id in(5,13,15,20) and district_name between 'b' and 'i'; 

select * from district where population_total between 1000000 and 2500000;

select *from  district where no_of_taluk between 3 and 5;

select * from district where famous_for between 'a' and 'g';


select * from district where area_sq_km not between 6500 and 10000;

select * from district where district_id in(5,13,15,20) and district_name not between 'b' and 'i'; 

select * from district where population_total not between 1000000 and 2500000;

select *from  district where no_of_taluk not between 3 and 5;

select * from district where famous_for not between 'a' and 'g';



