
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (3, 'Senger Lane', '02477', 'East Niabury', 'Montana', 'Mauritius', '1036 Johnston Parkway Suite 393');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (6, 'Giovanny Fort', '4211', 'South Archibaldton', 'Washington', 'South Africa', '301 Brown Meadow Apt. 006');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (7, 'Volkman Flat', '5903', 'Port Furman', 'NorthCarolina', 'Saint Kitts and Nevis', '146 Susana Grove Suite 585');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (8, 'Bettye Extension', '552', 'West Trevion', 'WestVirginia', 'Svalbard & Jan Mayen Islands', '253 Spinka Squares');
INSERT INTO `branch` (`b_num`, `street`, `building`, `city`, `state`, `country`, `locality`) VALUES (9, 'Mireille Squares', '784', 'Santosland', 'Michigan', 'Cambodia', '556 Wolf Tunnel');

INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('1', 'Mrs. Rosalee Cronin Jr.', '6.63', '2006-12-09', '1-888-718-7031', '97476 Santa Glens Suite 978\nSouth Obie, NE 51757-5043', 'aliya.casper@example.org', 8);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('3', 'Dr. Julio Jakubowski V', '292879.40', '1998-09-24', '449-942-7280x26', '486 Borer Meadows Suite 745\nSouth Cathyborough, FL 70954-9254', 'arodriguez@example.net', 9);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('4', 'Prof. Yasmin Legros II', '13338.28', '2014-02-20', '924-164-3795x72', '92106 Janis Summit Suite 806\nSouth Nathenberg, DE 71486-5106', 'tianna.swift@example.net', 3);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('5', 'Fritz Haag', '395410.10', '1988-08-30', '427-472-5215x48', '9017 Jayda Squares\nWest Jennyferborough, NV 42103-6673', 'epredovic@example.com', 7);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('6', 'Miss Savannah Konopelski V', '5090.00', '1990-04-22', '1-642-156-6618x', '5494 Jeffrey Dam Apt. 887\nWest Libbieshire, DE 68454-8813', 'xstroman@example.net', 6);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('7', 'Reece Schroeder', '10346.63', '1991-03-02', '416-898-7000', '107 Becker Curve\nMckaylaport, NV 22200-8799', 'sandy22@example.com', 3);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('8', 'Tierra Purdy', '9999999.99', '1984-07-11', '05441458278', '215 Bonita Springs\nNew Jacey, VA 61466', 'bogan.pink@example.org', 7);
INSERT INTO `Employee` (`employee_id`, `full_name`, `salary`, `dob`, `phone_number`, `address`, `email`, `works_in`) VALUES ('9', 'Eldora Gutkowski III', '3246.42', '2019-07-16', '1-258-923-3796x', '232 Larson Field Apt. 939\nRicehaven, WA 99499-7542', 'chloe.quigley@example.org', 6);


INSERT INTO `manager` (`manager_id`) VALUES ('1');
INSERT INTO `manager` (`manager_id`) VALUES ('3');
INSERT INTO `manager` (`manager_id`) VALUES ('4');

INSERT INTO `staff` (`staff_id`, `shift`, `specilization`, `superviser`) VALUES ('1', 'z', 'voluptas', '1');
INSERT INTO `staff` (`staff_id`, `shift`, `specilization`, `superviser`) VALUES ('3', 'w', 'similique', '3');

INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('1', 'f', 'nisi', '1');
INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('3', 'o', 'sit', '3');
INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('4', 't', 'molestias', '4');
INSERT INTO `trainer` (`trainer_id`, `shift`, `designation`, `superviser`) VALUES ('5', 'f', 'omnis', '1');


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



INSERT INTO `equipment` (`barcode`, `name`) VALUES ('1326285557404', 'voluptatem');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('1746840963202', 'perferendis');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('1887818122808', 'voluptatem');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('2953589461640', 'et');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('3742264021977', 'id');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('5594766668871', 'fugit');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('6320500545486', 'consequatur');
INSERT INTO `equipment` (`barcode`, `name`) VALUES ('8564426876769', 'quis');

INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('consequatur', 'Molestiae eum sequi et mollitia. Soluta quaerat mollitia perspiciatis animi non illum doloribus dicta.', '2953589461640');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('dicta', 'Maiores alias incidunt porro quo et deleniti asperiores vitae. Illo sit et odit dolorum sit. Quidem rerum facere quia non facere.', '1887818122808');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('facere', 'Omnis totam quia expedita sint est ut. Est totam et eum atque. Eveniet odio enim enim veniam ut.', '1746840963202');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('maiores', 'Beatae quidem non corrupti sequi vel quisquam nobis. Sapiente aut nihil ratione quis quia voluptates et.', '3742264021977');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('sit', 'Commodi ea praesentium iure aut. Impedit eaque ratione delectus corporis explicabo sit dolorem labore. Quidem rerum veniam totam et a est culpa. Consequatur facilis accusamus accusantium tenetur.', '1326285557404');
INSERT INTO `exercise` (`name`, `description`, `equip_code`) VALUES ('voluptate', 'Cupiditate et qui minus tempore inventore incidunt laborum laboriosam. Provident consequatur id quod officia et. Totam impedit quasi voluptatum consequatur aut consectetur. Minus nemo consequatur id et odit molestias.', '5594766668871');

INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('consequatur', 12);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('consequatur', 17);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('dicta', 8);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('dicta', 15);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('facere', 10);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('maiores', 14);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('sit', 13);
INSERT INTO `exer_reps` (`name`, `reps`) VALUES ('voluptate', 18);

INSERT INTO `works_on` (`member_id`, `trainer_id`, `exercise`, `body_part`) VALUES ('1', '1', 'consequatur', 'chest');
INSERT INTO `works_on` (`member_id`, `trainer_id`, `exercise`, `body_part`) VALUES ('2', '3', 'dicta', 'shoulder');
INSERT INTO `works_on` (`member_id`, `trainer_id`, `exercise`, `body_part`) VALUES ('3', '4', 'facere', 'biceps');



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


INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (6, 'Corrupti eos porro deleniti. Voluptatem iure doloribus cumque iste esse. Voluptatem accusantium id et ullam et excepturi.');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (9, 'Reprehenderit ab expedita impedit veniam. Illo aperiam corrupti est eligendi. Eveniet consequatur in molestiae aut. Culpa soluta facilis aut ad.');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (31, 'Velit vel quae voluptatibus qui quia voluptate aut. Et repellendus perferendis suscipit incidunt aliquam. Quam officia doloremque veniam aliquam optio animi accusamus. Nostrum omnis atque quia quam necessitatibus placeat.');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (37, 'Qui eum dolorem occaecati nam. Id officia ut quia minus. Ut doloremque porro et iusto. Officia maxime et mollitia eligendi explicabo aut aliquam.');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (38, 'Exercitationem qui architecto debitis omnis ducimus quasi odio. Et dignissimos culpa eveniet libero.');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (45, 'Omnis repudiandae accusantium magni et. Corrupti enim rerum soluta quas explicabo quis dicta. Eius aliquam est debitis dolorem deleniti excepturi provident. Non vel dolor ipsa minima dicta.');
INSERT INTO `dinner_plan` (`diet_index`, `dinner`) VALUES (54, 'Architecto architecto quis aspernatur debitis tenetur sapiente. Voluptates quia incidunt aliquam. Facere quasi totam nesciunt eius ipsam in officia.');

INSERT INTO `breakfast_plan` (`diet_index`, `breakfast`) VALUES (6, 'Quia dolorem ut placeat iusto. Delectus veniam et fuga dolorum. Facilis quaerat unde consequatur voluptas. Quis tempore beatae ipsum labore.');
INSERT INTO `breakfast_plan` (`diet_index`, `breakfast`) VALUES (9, 'Molestias non illo ut reiciendis nostrum quia ut alias. Quod est inventore quo architecto sit dolores inventore.');
INSERT INTO `breakfast_plan` (`diet_index`, `breakfast`) VALUES (31, 'Laboriosam nemo omnis ad beatae. Rerum nisi soluta numquam fugit. Nemo nobis sunt molestias asperiores.');

INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (6, 'Accusamus saepe ut laborum aliquam sed. Facilis nam repellendus voluptas eos rerum. Hic ipsum ut ut nihil.');
INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (9, 'Velit quisquam quia a delectus dolorem libero. Iste quisquam voluptatem alias exercitationem nostrum ipsum magnam minus. Perspiciatis in autem qui numquam quisquam vel.');
INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (31, 'Dicta aut quo voluptas consequatur adipisci nesciunt. Quia accusamus et ipsa quibusdam accusamus asperiores. Enim saepe sed architecto.');
INSERT INTO `lunch_plan` (`diet_index`, `lunch`) VALUES (37, 'Quo et aut debitis voluptatibus similique. Impedit placeat debitis nulla molestias. Nobis libero repellendus molestiae quod repudiandae sed voluptate.');

INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (6, 'Consectetur accusantium illum ipsum neque error. Praesentium ut et nemo esse animi deserunt.');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (9, 'Ratione excepturi aut nesciunt ea magni velit. Ea ut omnis possimus tenetur eos recusandae quia.');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (31, 'Quia quas et magnam. Et quaerat labore ullam neque.');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (37, 'Unde aut quidem vero qui veniam. Reiciendis eius eos rem assumenda.');
INSERT INTO `supper_plan` (`diet_index`, `supper`) VALUES (38, 'Ut aut mollitia quibusdam odio adipisci aspernatur. Autem aspernatur ex ipsum consequatur asperiores.');


INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('1', 6);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('2', 9);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('3', 31);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('4', 37);
INSERT INTO `follows` (`member_id`, `diet_plan`) VALUES ('5', 38);