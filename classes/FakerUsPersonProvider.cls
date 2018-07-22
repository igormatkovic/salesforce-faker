/**
 * Created by igor on 09/07/2018.
 */

public class FakerUsPersonProvider extends FakerPersonProvider {

    public FakerUsPersonProvider() {
        this.gender = new List<String>{
                'male',
                'female'
        };

        this.nameFormats = new List<String>{
                '{{firstName}} {{lastName}}',
                '{{firstName}} {{lastName}}',
                '{{firstName}} {{lastName}}',
                '{{firstName}} {{lastName}}',
                '{{title}} {{firstName}} {{lastName}}',
                '{{firstName}} {{lastName}} {{suffix}}',
                '{{title}} {{firstName}} {{lastName}} {{suffix}}'
        };
        this.firstName = new List<String>{

                'Abdiel', 'Abdul', 'Abelardo', 'Abner', 'Abraham', 'Adolf', 'Adonis', 'Adriel', 'Ahmad',
                'Aidan', 'Akeem', 'Al', 'Alden', 'Alec', 'Alex', 'Alford', 'Alfredo', 'Allen', 'Ambrose',
                'Americo', 'Amir', 'Amparo', 'Andrew', 'Antonio', 'Armani', 'Arno', 'Arnoldo', 'Arthur',
                'Austin', 'Axel', 'Benton', 'Berry', 'Bertha', 'Bertram', 'Bill', 'Blaise', 'Blaze', 'Bo',
                'Boyd', 'Braden', 'Braeden', 'Brannon', 'Brenden', 'Brent', 'Brook', 'Buford', 'Caesar',
                'Camren', 'Carleton', 'Carlo', 'Carlos', 'Casimir', 'Chadrick', 'Chester', 'Chet', 'Chris',
                'Christ', 'Cielo', 'Clement', 'Cole', 'Conor', 'Conrad', 'Cornelius', 'Cortez', 'Craig',
                'Dagmar', 'Dallin', 'Dane', 'Danny', 'Dante', 'Daren', 'Dario', 'Darrick',
                'Dave', 'Davonte', 'Declan', 'Dee', 'Deondre', 'Derick', 'Deron', 'Derrick', 'Deshaun',
                'Deshawn', 'Deven', 'Dino', 'Dion', 'Dock', 'Dominic', 'Donavon', 'Donnell', 'Donny',
                'Dorian', 'Doris', 'Dorthy', 'Durward', 'Edd', 'Eddie', 'Edgar', 'Edgardo', 'Eduardo',
                'Efren', 'Eino', 'Elliot', 'Elwin', 'Emerald', 'Emile', 'Emmitt', 'Ephraim', 'Eric',
                'Erich', 'Ervin', 'Eugene', 'Ezequiel', 'Felix', 'Fern', 'Francisco', 'Frank', 'Frederic',
                'Frederick', 'Fredy', 'Furman', 'Gaetano', 'Gage', 'Gaston', 'Geovanni', 'Gerald', 'Giovanni',
                'Giuseppe', 'Golden', 'Grady', 'Granville', 'Grayce', 'Halle', 'Haskell', 'Hassan', 'Helmer',
                'Herbert', 'Hilbert', 'Holden', 'Horace', 'Howard', 'Humberto', 'Ian', 'Ike', 'Immanuel',
                'Irwin', 'Issac', 'Jabari', 'Jaden', 'Jadon', 'Jaeden', 'Jaime', 'Jamar', 'Jamey',
                'Jamil', 'Jan', 'Jaren', 'Jarod', 'Jarret', 'Jarrod', 'Jason', 'Jasper', 'Jayce', 'Jaycee',
                'Jaydon', 'Jaylan', 'Jayson', 'Jennings', 'Jeramy', 'Jeremy', 'Jermain', 'Jerome', 'Jerrod',
                'Jett', 'Joany', 'Johathan', 'Johnnie', 'Johnson', 'Jordy', 'Josh', 'Jovany', 'Judah',
                'Judge', 'Julien', 'Junius', 'Juvenal', 'Juwan', 'Kade', 'Kaleb', 'Kameron', 'Karl',
                'Keeley', 'Kenneth', 'Keven', 'Ladarius', 'Landen', 'Lavern', 'Lavon', 'Leif', 'Lemuel',
                'Leonard', 'Leone', 'Leonel', 'Leopold', 'Lester', 'Liam', 'Lonnie', 'Lucas', 'Luciano',
                'Ludwig', 'Lula', 'Luther', 'Madisen', 'Madison', 'Marcelino', 'Mario', 'Mark', 'Markus',
                'Marlin', 'Marques', 'Marty', 'Mateo', 'Mathew', 'Mauricio', 'Mavis', 'Max', 'Maxime',
                'Maxine', 'Miguel', 'Milton', 'Mitchel', 'Mohamed', 'Mortimer', 'Narciso', 'Nat',
                'Nathanial', 'Neal', 'Neil', 'Nickolas', 'Nico', 'Nigel', 'Noe', 'Noel', 'Oran', 'Orion',
                'Oscar', 'Osvaldo', 'Ottis', 'Otto', 'Owen', 'Paris', 'Philip', 'Quentin', 'Rafael',
                'Randy', 'Ransom', 'Raul', 'Ray', 'Reece', 'Reinhold', 'Reyes', 'Ricardo', 'Richard',
                'Rick', 'Ricky', 'Roger', 'Roosevelt', 'Roscoe', 'Rosendo', 'Rudolph', 'Ryder', 'Samir',
                'Scottie', 'Sedrick', 'Shad', 'Shayne', 'Sid', 'Sigrid', 'Sim', 'Solon', 'Stephan',
                'Stewart', 'Sydney', 'Sylvester', 'Tate', 'Terrell', 'Terrill', 'Thomas', 'Tillman',
                'Timothy', 'Tomas', 'Tommie', 'Torrance', 'Toy', 'Tracey', 'Tremaine', 'Tremayne',
                'Trenton', 'Tristian', 'Tristin', 'Triston', 'Trystan', 'Tyreek', 'Ulices', 'Virgil',
                'Walton', 'Watson', 'Weldon', 'William', 'Woodrow', 'Zion', 'Abbie', 'Abby', 'Adaline',
                'Addie', 'Addison', 'Adela', 'Adriana', 'Albina', 'Alessia', 'Alexandrea', 'Alexanne',
                'Aliza', 'Alyce', 'Amanda', 'Amber', 'Ana', 'Anastasia', 'Angie', 'Aniya', 'Aniyah',
                'Anjali', 'Annabell', 'Annalise', 'Annetta', 'Antoinette', 'Antonina', 'Ara', 'Arlie',
                'Asia', 'Augusta', 'Aurore', 'Berenice', 'Berniece', 'Bernita', 'Betty', 'Bettye',
                'Billie', 'Brisa', 'Britney', 'Burdette', 'Camila', 'Candida', 'Carmella', 'Carmen',
                'Carrie', 'Catherine', 'Cathrine', 'Cecilia', 'Chanelle', 'Charlene', 'Charlotte',
                'Chasity', 'Chelsea', 'Cheyanne', 'Christiana', 'Chyna', 'Ciara', 'Citlalli',
                'Clarabelle', 'Clotilde', 'Colleen', 'Concepcion', 'Connie', 'Constance', 'Iggy',
                'Cordie', 'Corene', 'Corrine', 'Cortney', 'Courtney', 'Crystal', 'Crystel', 'Igor',
                'Cynthia', 'Dakota', 'Daphne', 'Dawn', 'Deanna', 'Deborah', 'Dejah', 'Delia',
                'Delores', 'Delpha', 'Destinee', 'Destiney', 'Destiny', 'Dolores', 'Dora', 'Dorris',
                'Earline', 'Ebony', 'Edwina', 'Elaina', 'Elda', 'Elinor', 'Elisa', 'Elizabeth',
                'Ella', 'Elsie', 'Elta', 'Emelie', 'Emely', 'Emmalee', 'Emmanuelle', 'Emmy', 'Ena',
                'Erica', 'Eugenia', 'Eula', 'Felicity', 'Francisca', 'Freda', 'Georgette', 'Grace',
                'Gracie', 'Greta', 'Gretchen', 'Gwendolyn', 'Haylee', 'Helga', 'Hellen', 'Henriette',
                'Herminia', 'Hertha', 'Hilma', 'Idell', 'Ila', 'Isabell', 'Itzel', 'Izabella', 'Jacinthe',
                'Jacklyn', 'Jakayla', 'Jammie', 'Jaquelin', 'Jaqueline', 'Jazmyne', 'Jeanie', 'Jeanne',
                'Jena', 'Jenifer', 'Jennie', 'Joanie', 'Jody', 'Johanna', 'Josefina', 'Josephine', 'Julie'
        };

        this.lastName = new List<String>{
                'Adams', 'Altenwerth', 'Bartell', 'Bartoletti', 'Bashirian', 'Batz', 'Baumbach',
                'Bayer', 'Beatty', 'Bechtelar', 'Beer', 'Beier', 'Berge', 'Bergstrom', 'Bins',
                'Blanda', 'Boehm', 'Bogisich', 'Botsford', 'Boyer', 'Brown', 'Carter', 'Cartwright',
                'Cassin', 'Christiansen', 'Collier', 'Conn', 'Connelly', 'Conroy', 'Corkery',
                'Cormier', 'Cremin', 'Crist', 'Cronin', 'Davis', 'Deckow', 'Dibbert',
                'Dickens', 'Dicki', 'Dietrich', 'Durgan', 'Emmerich', 'Fahey', 'Farrell',
                'Fisher', 'Flatley', 'Frami', 'Friesen', 'Funk', 'Gaylord', 'Gerlach', 'Goodwin',
                'Goyette', 'Greenfelder', 'Grimes', 'Gulgowski', 'Gusikowski', 'Hagenes', 'Halvorson',
                'Hamill', 'Hansen', 'Harber', 'Harris', 'Heathcote', 'Heller', 'Hermann', 'Hermiston',
                'Herzog', 'Hessel', 'Hettinger', 'Hills', 'Hintz', 'Hodkiewicz', 'Hoeger', 'Hoppe',
                'Hyatt', 'Jacobi', 'Jaskolski', 'Jenkins', 'Keebler', 'Keeling', 'Kertzmann',
                'Kessler', 'Kihn', 'Kirlin', 'Klein', 'Koepp', 'Konopelski', 'Koss', 'Kovacek',
                'Kshlerin', 'Kuhic', 'Kuhlman', 'Kulas', 'Kuphal', 'Lakin', 'Lang', 'Langosh',
                'Leannon', 'Lebsack', 'Ledner', 'Leffler', 'Lehner', 'Lemke', 'Lesch', 'Littel',
                'Lubowitz', 'Lynch', 'Macejkovic', 'Mayer', 'Mayert', 'McDermott', 'McGlynn',
                'Metz', 'Mills', 'Mitchell', 'Moen', 'Mohr', 'Morar', 'Mraz', 'Muller', 'Murazik',
                'Murray', 'Nader', 'Nikolaus', 'Nitzsche', 'Ondricka',
                'Orn', 'Osinski', 'Padberg', 'Pagac', 'Parisian', 'Parker', 'Pfeffer', 'Pollich',
                'Pouros', 'Predovic', 'Purdy', 'Quigley', 'Rau', 'Reichel', 'Reilly', 'Rippin',
                'Robel', 'Rodriguez', 'Rogahn', 'Rolfson', 'Romaguera', 'Rosenbaum', 'Rowe',
                'Runte', 'Satterfield', 'Sawayn', 'Schaden', 'Schamberger', 'Schiller', 'Schimmel',
                'Schneider', 'Schulist', 'Schuppe', 'Skiles', 'Smitham', 'Sporer', 'Stanton',
                'Steuber', 'Stokes', 'Streich', 'Stroman', 'Strosin', 'Swaniawski', 'Terry',
                'Thompson', 'Torp', 'Towne', 'Treutel', 'Ullrich', 'Upton', 'Vandervort', 'VonRueden',
                'Walsh', 'Walter', 'Ward', 'Watsica', 'Weber', 'Wehner', 'Weimann', 'Welch',
                'White', 'Windler', 'Wintheiser', 'Wiza', 'Wolff', 'Wuckert', 'Wunsch', 'Wyman',
                'Ziemann', 'Zieme'
        };

        this.suffix = new List<String>{
                'Jr.', 'Sr.', 'I', 'II', 'III', 'IV', 'V', 'MD', 'DDS', 'PhD', 'DVM'
        };
        this.title = new List<String>{
                'Sir.', 'Mr.', 'Ms', 'Miss', 'Dr'
        };


        this.jobTitle = new List<String>{
                'Able Seamen', 'Adjustment Clerk', 'Administrative Services Manager', 'Advertising Manager OR Promotions Manager',
                'Agricultural Sciences Teacher', 'Air Crew Officer', 'Aircraft Body Repairer', 'Aircraft Cargo Handling Supervisor',
                'Airframe Mechanic', 'Animal Husbandry Worker', 'Animal Trainer', 'Answering Service',
                'Anthropologist OR Archeologist', 'Architecture Teacher', 'Assembler',
                'Audio and Video Equipment Technician', 'Bailiff', 'Baker', 'Barber', 'Bellhop',
                'Biomedical Engineer', 'Boiler Operator', 'Brake Machine Setter', 'Bridge Tender OR Lock Tender',
                'Business Development Manager', 'Butcher', 'Buyer', 'Cafeteria Cook', 'Captain', 'Cartographer',
                'Carver', 'Casting Machine Operator', 'Casting Machine Set-Up Operator', 'Chef',
                'Chemical Equipment Tender', 'Chemical Technician', 'Chiropractor', 'City',
                'Claims Examiner', 'Cleaners of Vehicles', 'Command Control Center Officer',
                'Commercial Diver', 'Composer', 'Computer Science Teacher', 'Computer Scientist',
                'Computer Security Specialist', 'Computer Software Engineer', 'Computer Specialist',
                'Computer-Controlled Machine Tool Operator', 'Construction', 'Construction Equipment Operator',
                'Continuous Mining Machine Operator', 'Copy Machine Operator', 'Costume Attendant', 'Court Reporter',
                'Credit Checker', 'Curator', 'Cutting Machine Operator', 'Directory Assistance Operator', 'Dot Etcher',
                'Dragline Operator', 'Drilling and Boring Machine Tool Setter', 'Drycleaning Machine Operator', 'Education Administrator',
                'Electromechanical Equipment Assembler', 'Electronic Masking System Operator', 'Electronics Engineer',
                'Elementary and Secondary School Administrators', 'Engineering', 'Etcher and Engraver', 'Fabric Pressers',
                'Fiber Product Cutting Machine Operator', 'Financial Examiner', 'Fish Game Warden', 'Fishery Worker',
                'Food Preparation', 'Food cientists and Technologist', 'Foreign Language Teacher', 'Forest and Conservation Technician',
                'Forest and Conservation Worker', 'Forging Machine Setter', 'Freight Inspector', 'Gas Compressor Operator',
                'Gas Distribution Plant Operator', 'GED Teacher', 'Geography Teacher', 'Health Services Manager',
                'Hoist and Winch Operator', 'Home Appliance Installer', 'Home Entertainment Equipment Installer', 'Home Health Aide',
                'Hotel Desk Clerk', 'HR Manager', 'Human Resource Director', 'HVAC Mechanic', 'Immigration Inspector OR Customs Inspector',
                'Insulation Worker', 'Insurance Claims Clerk', 'Interior Designer', 'Interviewer', 'Keyboard Instrument Repairer and Tuner',
                'Kindergarten Teacher', 'Laundry OR Dry-Cleaning Worker', 'Legal Secretary', 'Legislator', 'Library Science Teacher',
                'Library Technician', 'Life Science Technician', 'Logging Supervisor', 'Logging Tractor Operator', 'Machinist',
                'Manager of Air Crew', 'Marine Architect', 'Market Research Analyst', 'Marking Clerk', 'Marriage and Family Therapist',
                'Materials Inspector', 'Mathematical Technician', 'Mechanical Engineering Technician', 'Medical Secretary',
                'Metal Worker', 'Military Officer', 'Mining Machine Operator', 'Molding Machine Operator', 'Motorboat Operator',
                'Motorcycle Mechanic', 'Municipal Clerk', 'Musician OR Singer', 'Network Systems Analyst', 'Nuclear Medicine Technologist',
                'Nuclear Monitoring Technician', 'Numerical Control Machine Tool Operator', 'Numerical Tool Programmer OR Process Control Programmer',
                'Occupational Health Safety Specialist', 'Pantograph Engraver', 'Paste-Up Worker', 'Patrol Officer', 'Pharmacy Technician',
                'Philosophy and Religion Teacher', 'Photographic Process Worker', 'Photographic Processing Machine Operator',
                'Physical Therapist Assistant', 'Plant and System Operator', 'Postal Service Mail Carrier', 'PR Manager',
                'Precious Stone Worker', 'Probation Officers and Correctional Treatment Specialist', 'Procurement Clerk',
                'Production Planner', 'Production Planning', 'Professional Photographer', 'Program Director', 'Public Transportation Inspector',
                'Radiation Therapist', 'Radiologic Technician', 'Rail Yard Engineer', 'Railroad Conductors', 'Real Estate Broker',
                'Receptionist and Information Clerk', 'Respiratory Therapist', 'Roof Bolters Mining', 'Sales Engineer', 'Sales Person',
                'School Social Worker', 'Sculptor', 'Security Guard', 'Sheet Metal Worker', 'Ship Mates', 'Ship Pilot',
                'Signal Repairer OR Track Switch Repairer', 'Social Scientists', 'Social Work Teacher', 'Special Force',
                'Structural Iron and Steel Worker', 'Substance Abuse Social Worker', 'Substation Maintenance', 'Tailor',
                'Technical Program Manager', 'Telecommunications Line Installer', 'Textile Dyeing Machine Operator',
                'Tire Changer', 'Title Searcher', 'Tool Sharpener', 'Transportation Equipment Maintenance', 'Transportation Inspector',
                'Transportation Manager', 'Transportation Worker', 'Typesetter', 'Umpire and Referee', 'Vending Machine Servicer',
                'Veterinarian', 'Vice President Of Human Resources', 'Video Editor', 'Washing Equipment Operator', 'Web Developer',
                'Welder-Fitter',  'Welding Machine Tender', 'Welding Machine Operator', 'Word Processors and Typist',
                'Zoologists OR Wildlife Biologist'

        };

        this.init();
    }

}