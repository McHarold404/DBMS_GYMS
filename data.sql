INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (3, 'Senger Lane', '02477', 'East Niabury', 'Montana', 'Mauritius', '1036 Johnston Parkway Suite 393');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (6, 'Giovanny Fort', '4211', 'South Archibaldton', 'Washington', 'South Africa', '301 Brown Meadow Apt. 006');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (7, 'Volkman Flat', '5903', 'Port Furman', 'NorthCarolina', 'Saint Kitts and Nevis', '146 Susana Grove Suite 585');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (8, 'Bettye Extension', '552', 'West Trevion', 'WestVirginia', 'Svalbard & Jan Mayen Islands', '253 Spinka Squares');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (9, 'Mireille Squares', '784', 'Santosland', 'Michigan', 'Cambodia', '556 Wolf Tunnel');



INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('1', 'Mrs. Rosalee Cronin Jr.', '6.63', '2006-12-09', '1-888-718-7031', '97476 Santa Glens Suite 978\nSouth Obie, NE 51757-5043', 'aliya.casper@example.org', 8);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('2', 'Mrs. Walter White Jr.', '1111.11', '1998-02-03', '1-928-552-7976', '12334  Alberquerque\nNew Mexico, Texas 51757-5043', 'breaking.bad@jesse.org', 8);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('3', 'Dr. Julio Jakubowski V', '292879.40', '1998-09-24', '449-942-7280x26', '486 Borer Meadows Suite 745\nSouth Cathyborough, FL 70954-9254', 'arodriguez@example.net', 9);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('4', 'Prof. Yasmin Legros II', '13338.28', '2014-02-20', '924-164-3795x72', '92106 Janis Summit Suite 806\nSouth Nathenberg, DE 71486-5106', 'tianna.swift@example.net', 3);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('5', 'Fritz Haag', '395410.10', '1988-08-30', '427-472-5215x48', '9017 Jayda Squares\nWest Jennyferborough, NV 42103-6673', 'epredovic@example.com', 7);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('6', 'Miss Savannah Konopelski V', '5090.00', '1990-04-22', '1-642-156-6618x', '5494 Jeffrey Dam Apt. 887\nWest Libbieshire, DE 68454-8813', 'xstroman@example.net', 6);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('7', 'Reece Schroeder', '10346.63', '1991-03-02', '416-898-7000', '107 Becker Curve\nMckaylaport, NV 22200-8799', 'sandy22@example.com', 3);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('8', 'Tierra Purdy', '9999999.99', '1984-07-11', '05441458278', '215 Bonita Springs\nNew Jacey, VA 61466', 'bogan.pink@example.org', 7);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('9', 'Eldora Gutkowski III', '3246.42', '2019-07-16', '1-258-923-3796x', '232 Larson Field Apt. 939\nRicehaven, WA 99499-7542', 'chloe.quigley@example.org', 6);


INSERT INTO `manager` (`manager_id`) VALUES ('6');
INSERT INTO `manager` (`manager_id`) VALUES ('7');
INSERT INTO `manager` (`manager_id`) VALUES ('8');

INSERT INTO `staff` (`staff_id`, `shift`, `specilization`, `superviser`) VALUES ('2', 'z', 'morning', '7');
INSERT INTO `staff` (`staff_id`, `shift`, `specilization`, `superviser`) VALUES ('9', 'w', 'evening', '8');

INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('1', 'morning', 'Upper-Body Specialist', '6');
INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('3', 'evening', 'Lower Body Specialist', '8');
INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('4', 'morning', 'Fat loss Expert', '6');
INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('5', 'evening', 'Overall-Supervisor', '7');


INSERT INTO `dependent` (`name`, `relationship`, `emp_id`) VALUES ('Colby Volkman MD', 'son', '3');
INSERT INTO `dependent` (`name`, `relationship`, `emp_id`) VALUES ('Dereck Witting', 'daughter', '7');
INSERT INTO `dependent` (`name`, `relationship`, `emp_id`) VALUES ('Dr. Kade Schultz', 'brother', '4');
INSERT INTO `dependent` (`name`, `relationship`, `emp_id`) VALUES ('Mercedes Runolfsdottir II', 'father', '1');
INSERT INTO `dependent` (`name`, `relationship`, `emp_id`) VALUES ('Parker Armstrong', 'son', '5');
INSERT INTO `dependent` (`name`, `relationship`, `emp_id`) VALUES ('Prof. Mariana Berge', 'sister', '6');



INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('1', 'Willard', 'b', 'Hudson', '968403.38', '1.81', '100.99', '(721)870-7261x7', 'wdickens@example.net', '2770 Hauck Summit\nSchmidtport, CT 73278-8407', 8, '2015-03-23', '1');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('2', 'Jadon', 't', 'Beahan', '0.00', '1.22', '999.99', '360-141-5085x97', 'stewart.schmidt@example.com', '902 Eric Rue Apt. 945\nWest Nya, TX 65886', 8, '2011-01-05', '5');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('3', 'Brittany', 'w', 'Leuschke', '1.50', '1.92', '15.13', '1-176-047-9376x', 'morissette.betsy@example.org', '9206 Barrows Avenue\nWest Otha, CT 22225-3740', 7, '2019-03-01','5');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('4', 'Devan', 'v', 'Hoppe', '1586768.20', '1.45', '469.99', '195.790.9241x64', 'vgleason@example.com', '46879 Grimes Knoll\nRohanfurt, OH 49198', 6, '2017-01-19', '4');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('5', 'Janelle', 'p', 'Erdman', '42754.34', '9.09', '919.99', '1-590-996-4456x', 'halle62@example.net', '104 Kris Junctions\nKonopelskiburgh, HI 79945', 7, '2011-10-09', '4');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('6', 'Frances', 'l', 'Feeney', '78249.72', '2.99', '900.99', '1-870-771-9612', 'lazaro54@example.com', '14300 Kiarra Locks Suite 108\nBradfordberg, NJ 73647', 3, '2020-05-18', '3');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('7', 'Lorenza', 'x', 'Ward', '9999999.99', '3.99', '300.00', '(050)832-2439x1', 'zrutherford@example.net', '49333 Lehner Course Apt. 340\nAlvinatown, SC 27136', 6, '2018-03-31', '3');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('8', 'Dee', 'f', 'Ritchie', '2357.20', '6.19', '281.68', '939-833-1815x83', 'armstrong.jammie@example.net', '124 Clemmie Valleys Apt. 497\nPort Theodoraland, CO 42165-0038', 3, '2018-02-23', '1');
INSERT INTO `member` (`member_id`, `f_name`, `m_init`, `l_name`, `fee`, `height`, `weight`, `phone_number`, `email`, `address`, `works_out`, `trainer_start`, `trainer_id`) VALUES ('9', 'Olaf', 't', 'Kilback', '551774.43', '2.99', '20.00', '155-276-3670x99', 'flo.west@example.org', '9240 Omer Court Apt. 204\nFritschtown, DE 73044-2491', 9, '2014-09-28','1');


INSERT INTO `body_part` (`name`, `member_id`) VALUES ('chest', '5');
INSERT INTO `body_part` (`name`, `member_id`) VALUES ('calf', '3');
INSERT INTO `body_part` (`name`, `member_id`) VALUES ('shoulder', '4');
INSERT INTO `body_part` (`name`, `member_id`) VALUES ('neck', '2');
INSERT INTO `body_part` (`name`, `member_id`) VALUES ('biceps', '1');



INSERT INTO `equipment` (`barcode`, `name`) VALUES ('1326285557404', 'Dumbbell');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('1746840963202', 'Barbell Set');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('1887818122808', 'Treadmilll');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('2953589461640', 'Cross-trainer');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('3742264021977', 'Lat Pulldown Machine');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('5594766668871', 'Kettle Ball');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('6320500545486', 'Triceps Bar');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('8564426876769', 'Seated Calf Machine');

INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('Leg Extension', 'The leg extension is performed while seated by raising a weight out in front of the body with the feet', '8564426876769');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('Deadlifts', 'deadlift is performed by squatting down and lifting a weight off the floor with the hand until standing up straight again', '1326285557404');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('Squats', 'Resting the barbell rod on your shoulder and squating down and then coming up.', '1746840963202');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('Preacher Curl', 'The Preacher curl is performed while standing or seated, with hands hanging down holding weights (palms facing forwards), by curling them up to the shoulders', '1326285557404');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('Kettle Ball Swing', ' Kettle Ball swing is a basic ballistic exercise used to train the posterior chain in a manner similar to broad jumping.', '1326285557404');

INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Leg Extension', 12);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Deadlifts', 17);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Squats', 8);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Preacher Curl', 15);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Kettle Ball Swing', 10);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Squats', 14);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Leg Extension', 13);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('Kettle Ball Swing', 18);

INSERT INTO `works_on` (`member_id`, `trainer_id`, `exercise`, `body_part`) VALUES ('1', '1', 'Leg Extension', 'chest');
INSERT INTO `works_on` (`member_id`, `trainer_id`, `exercise`, `body_part`) VALUES ('2', '3', 'Deadlifts', 'shoulder');
INSERT INTO `works_on` (`member_id`, `trainer_id`, `exercise`, `body_part`) VALUES ('3', '4', 'Squats', 'biceps');



INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (6, 2044);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (9, 3713);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (31, 4653);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (37, 2603);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (38, 1025);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (45, 4695);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (54, 3762);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (58, 4143);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (65, 4236);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (80, 1311);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (82, 528);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (84, 1024);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (87, 1537);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (92, 1623);
INSERT INTO `diet_plan` (`index`, `calory_cnt`) VALUES (95, 1872);


INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (6, 'Salad');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (9, 'Fruit Bowl');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (31, 'Dal,Chapatis');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (37, 'Apples');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (38, 'Grilled Chicken');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (45, 'Grilled Fish');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (54, 'Eggs');

INSERT INTO `breakfast_plan` (`diet_index`, `breakfast`) VALUES (6, 'Omlette');
INSERT INTO `breakfast_plan` (`diet_index`, `breakfast`) VALUES (9, 'Boiled Egg');
INSERT INTO `breakfast_plan` (`diet_index`, `breakfast`) VALUES (31, 'Dosa');

INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (6, 'Oats');
INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (9, 'Dal,Boiled Rice');
INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (31, 'Brown Rice');
INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (37, 'Fruit Salad');

INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (6, 'Bananas');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (9, 'Apples');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (31, 'Sandwich');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (37, 'Pasta');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (38, 'Protein Bar');


INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('1', 6);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('2', 9);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('3', 31);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('4', 37);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('5', 38);