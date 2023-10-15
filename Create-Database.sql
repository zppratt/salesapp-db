IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'SalesApp')
BEGIN
    CREATE DATABASE SalesApp;
END;

USE SalesApp;

-- Drop the table if it exists (for testing purposes)
IF OBJECT_ID('Customers', 'U') IS NOT NULL
    DROP TABLE Customers;

-- Create the Customers table
CREATE TABLE Customers (
    Id INT PRIMARY KEY,
    Name NVARCHAR(255),
    Email NVARCHAR(255),
    ProductPreference NVARCHAR(50),
    LastPurchaseDate DATE,
    NumPurchasesLast30Days INT,
    LifetimeTotal DECIMAL(10, 2)
);

-- Insert customer data
INSERT INTO Customers (Id, Name, Email, ProductPreference, LastPurchaseDate, NumPurchasesLast30Days, LifetimeTotal)
VALUES
    (1, 'Everett Brakus', 'Stanton6@gmail.com', 'Shoes', '2020-11-24', 10, 3496.84),
    (2, 'Kent Simonis', 'Pierre34@yahoo.com', 'Industrial', '2022-05-25', 4, 159.29),
    (3, 'Mr. Nelson Walsh', 'Genevieve_Friesen16@hotmail.com', 'Grocery', '2022-09-12', 3, 1050.82),
    (4, 'Saul Leuschke', 'Brandyn20@gmail.com', 'Outdoors', '2022-05-30', 5, 482.67),
    (5, 'Mrs. Laverne Bruen', 'Thea.White@hotmail.com', 'Movies', '2020-06-16', 1, 3568.33),
    (6, 'Myrtle Hammes', 'Jeanette_Mueller@hotmail.com', 'Industrial', '2021-12-23', 1, 4371.92),
    (7, 'Ramiro Schneider', 'Dorothy.Lindgren@yahoo.com', 'Jewelery', '2023-09-09', 10, 4712.91),
    (8, 'Rebecca Zemlak', 'Mason.Krajcik70@yahoo.com', 'Clothing', '2022-10-08', 8, 3562.77),
    (9, 'Miss Doreen Hudson', 'Opal.Brakus@hotmail.com', 'Sports', '2021-02-19', 6, 3358.01),
    (10, 'Alonzo Stanton', 'Willis57@hotmail.com', 'Movies', '2023-05-21', 10, 1746.4),
    (11, 'Laverne Metz DDS', 'Jeremie83@hotmail.com', 'Baby', '2021-02-09', 1, 4854.77),
    (12, 'Cristina Boyle', 'Cooper40@gmail.com', 'Games', '2021-10-27', 1, 357.76),
    (13, 'Rafael Yost', 'Loraine.Lynch@yahoo.com', 'Outdoors', '2022-07-29', 10, 2088.23),
    (14, 'Brittany Gleichner DVM', 'Kayden26@gmail.com', 'Clothing', '2023-09-24', 3, 3507.96),
    (15, 'Meredith McCullough-Gutkowski', 'Lyla31@yahoo.com', 'Computers', '2020-04-17', 3, 4838.21),
    (16, 'Mary Schimmel', 'Luella31@hotmail.com', 'Computers', '2020-04-09', 9, 4000.76),
    (17, 'Mable Wuckert', 'Darrick.Koch82@gmail.com', 'Jewelery', '2022-08-31', 4, 1780.92),
    (18, 'Dominic Kautzer', 'Derek70@gmail.com', 'Industrial', '2021-11-11', 7, 3116.06),
    (19, 'Carole Quigley', 'Mohammad24@gmail.com', 'Games', '2020-07-05', 8, 1609.06),
    (20, 'Franklin Zulauf III', 'Norma.Wintheiser58@hotmail.com', 'Books', '2021-10-08', 9, 4934.26),
    (21, 'Josefina Shanahan', 'Armani67@gmail.com', 'Tools', '2022-06-14', 1, 4674.65),
    (22, 'Renee Moen', 'Ellsworth.Mayer@yahoo.com', 'Books', '2021-03-30', 9, 3086.73),
    (23, 'Eileen Donnelly', 'Edwin51@yahoo.com', 'Automotive', '2020-03-09', 10, 299.95),
    (24, 'Mr. Wallace Osinski', 'Saige.Emmerich55@yahoo.com', 'Automotive', '2023-04-14', 4, 4765.74),
    (25, 'Nicolas Nolan', 'Hans_Yundt@gmail.com', 'Beauty', '2021-03-07', 4, 210.83),
    (26, 'Arturo Hilll', 'Toney72@hotmail.com', 'Beauty', '2023-06-01', 4, 908.2),
    (27, 'Maureen Powlowski', 'Gerda.Cummings30@gmail.com', 'Jewelery', '2020-01-07', 5, 3322.51),
    (28, 'Kari Rippin', 'Jada48@yahoo.com', 'Industrial', '2021-02-21', 6, 3977.68),
    (29, 'Wade Murray', 'Sydni63@gmail.com', 'Computers', '2023-10-04', 4, 1285.8),
    (30, 'Gary Parker', 'Evert72@yahoo.com', 'Computers', '2021-10-13', 8, 238.35),
    (31, 'Dr. Rudy Champlin', 'Tomasa_Crist@yahoo.com', 'Movies', '2023-03-10', 3, 3037.64),
    (32, 'Luz Cummerata', 'Stanley_Stokes@yahoo.com', 'Toys', '2022-10-02', 6, 1784.35),
    (33, 'Miss Becky Sporer', 'Abdul15@yahoo.com', 'Toys', '2020-08-25', 1, 1850.03),
    (34, 'Lance Predovic', 'Nathaniel11@hotmail.com', 'Electronics', '2021-05-03', 6, 3172.95),
    (35, 'Troy Watsica', 'Buddy_Goyette@yahoo.com', 'Garden', '2022-12-16', 4, 828.46),
    (36, 'Terrence Hintz III', 'Reilly.Schumm98@yahoo.com', 'Books', '2022-08-31', 3, 2814.15),
    (37, 'Loren Collier-Bartoletti', 'Kyla_Wiza@gmail.com', 'Electronics', '2020-02-10', 4, 110.01),
    (38, 'Nancy Sporer', 'Keyshawn_Kshlerin@yahoo.com', 'Jewelery', '2021-09-15', 0, 1031.3),
    (39, 'Wanda Stanton', 'Abdiel94@yahoo.com', 'Health', '2020-12-18', 8, 4694.03),
    (40, 'Lester Walter', 'Sven.DAmore2@yahoo.com', 'Beauty', '2023-01-19', 9, 4636.89),
    (41, 'Gregg Torp', 'Flo_Kulas50@yahoo.com', 'Baby', '2022-04-02', 1, 3272.19),
    (42, 'Sammy Brekke', 'Lera77@yahoo.com', 'Garden', '2023-01-27', 3, 4958.05),
    (43, 'Hazel Adams', 'Aurelio.Bernier@hotmail.com', 'Tools', '2023-09-10', 2, 4670.33),
    (44, 'Luke Watsica Jr.', 'Josiah91@hotmail.com', 'Industrial', '2022-09-23', 2, 970.59),
    (45, 'Dr. Katie Bahringer', 'Durward.Koelpin@hotmail.com', 'Kids', '2023-03-14', 1, 303.18),
    (46, 'Kenneth O''Conner', 'Ora.Larson28@hotmail.com', 'Clothing', '2023-04-16', 10, 4475.83),
    (47, 'Harriet Rogahn', 'Kristofer67@yahoo.com', 'Toys', '2023-10-08', 3, 602.38),
    (48, 'Ms. Hilda Brown', 'Elliott.Bogan@gmail.com', 'Clothing', '2023-08-02', 3, 2238.1),
    (49, 'Phillip Bauch III', 'Johnson82@gmail.com', 'Tools', '2021-01-25', 6, 2693.32),
    (50, 'Terry Barton', 'Crystal76@hotmail.com', 'Kids', '2022-03-27', 3, 3422.34);
