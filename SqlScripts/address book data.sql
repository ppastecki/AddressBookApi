use AddressBook
go

delete dbo.EmailAddress
delete dbo.Phone
delete dbo.Address
delete dbo.Person
delete dbo.Country

declare @modifiedDate datetime = getdate()

insert into dbo.Country(Name, ModifiedDate)
values
	('Afghanistan', @modifiedDate), ('Albania', @modifiedDate), ('Algeria', @modifiedDate),
	('American Samoa', @modifiedDate), ('Andorra', @modifiedDate), ('Angola', @modifiedDate),
	('Anguilla', @modifiedDate), ('Antarctica', @modifiedDate), ('Antigua and Barbuda', @modifiedDate),
	('Argentina', @modifiedDate), ('Armenia', @modifiedDate), ('Aruba', @modifiedDate),
	('Australia', @modifiedDate), ('Austria', @modifiedDate), ('Azerbaijan', @modifiedDate),
	('Bahamas, The', @modifiedDate), ('Bahrain', @modifiedDate), ('Bangladesh', @modifiedDate),
	('Barbados', @modifiedDate), ('Belarus', @modifiedDate), ('Belgium', @modifiedDate),
	('Belize', @modifiedDate), ('Benin', @modifiedDate), ('Bermuda', @modifiedDate),
	('Bhutan', @modifiedDate), ('Bolivia', @modifiedDate), ('Bosnia and Herzegovina', @modifiedDate),
	('Botswana', @modifiedDate), ('Bouvet Island', @modifiedDate), ('Brazil', @modifiedDate),
	('British Indian Ocean Territory', @modifiedDate), ('Brunei', @modifiedDate), ('Bulgaria', @modifiedDate),
	('Burkina Faso', @modifiedDate), ('Burundi', @modifiedDate), ('Cambodia', @modifiedDate),
	('Cameroon', @modifiedDate), ('Canada', @modifiedDate), ('Cape Verde', @modifiedDate),
	('Cayman Islands', @modifiedDate), ('Central African Republic', @modifiedDate),
	('Chad', @modifiedDate), ('Chile', @modifiedDate), ('China', @modifiedDate),
	('Christmas Island', @modifiedDate), ('Cocos (Keeling) Islands', @modifiedDate),
	('Colombia', @modifiedDate), ('Comoros', @modifiedDate), ('Congo', @modifiedDate),
	('Congo (DRC)', @modifiedDate), ('Cook Islands', @modifiedDate), ('Costa Rica', @modifiedDate),
	('Côte d;;Ivoire', @modifiedDate), ('Croatia', @modifiedDate), ('Cuba', @modifiedDate),
	('Cyprus', @modifiedDate), ('Czech Republic', @modifiedDate),
	('Denmark', @modifiedDate), ('Djibouti', @modifiedDate), ('Dominica', @modifiedDate),
	('Dominican Republic', @modifiedDate), ('Ecuador', @modifiedDate), ('Egypt', @modifiedDate),
	('El Salvador', @modifiedDate), ('Equatorial Guinea', @modifiedDate), ('Eritrea', @modifiedDate),
	('Estonia', @modifiedDate), ('Ethiopia', @modifiedDate), ('Falkland Islands (Islas Malvinas)', @modifiedDate),
	('Faroe Islands', @modifiedDate), ('Fiji Islands', @modifiedDate), ('Finland', @modifiedDate),
	('France', @modifiedDate), ('French Guiana', @modifiedDate), ('French Polynesia', @modifiedDate),
	('French Southern and Antarctic Lands', @modifiedDate), ('Gabon', @modifiedDate), ('Gambia, The', @modifiedDate),
	('Georgia', @modifiedDate), ('Germany', @modifiedDate), ('Ghana', @modifiedDate),
	('Gibraltar', @modifiedDate), ('Greece', @modifiedDate), ('Greenland', @modifiedDate),
	('Grenada', @modifiedDate), ('Guadeloupe', @modifiedDate), ('Guam', @modifiedDate),
	('Guatemala', @modifiedDate), ('Guinea', @modifiedDate), ('Guinea-Bissau', @modifiedDate),
	('Guyana', @modifiedDate), ('Haiti', @modifiedDate), ('Heard Island and McDonald Islands', @modifiedDate),
	('Honduras', @modifiedDate), ('Hong Kong SAR', @modifiedDate), ('Hungary', @modifiedDate),
	('Iceland', @modifiedDate), ('India', @modifiedDate), ('Indonesia', @modifiedDate),
	('Iran', @modifiedDate), ('Iraq', @modifiedDate), ('Ireland', @modifiedDate),
	('Israel', @modifiedDate), ('Italy', @modifiedDate), ('Jamaica', @modifiedDate),
	('Japan', @modifiedDate), ('Jordan', @modifiedDate), ('Kazakhstan', @modifiedDate),
	('Kenya', @modifiedDate), ('Kiribati', @modifiedDate), ('Korea', @modifiedDate),
	('Kuwait', @modifiedDate), ('Kyrgyzstan', @modifiedDate), ('Laos', @modifiedDate),
	('Latvia', @modifiedDate), ('Lebanon', @modifiedDate), ('Lesotho', @modifiedDate),
	('Liberia', @modifiedDate), ('Libya', @modifiedDate), ('Liechtenstein', @modifiedDate),
	('Lithuania', @modifiedDate), ('Luxembourg', @modifiedDate), ('Macao SAR', @modifiedDate),
	('Macedonia, Former Yugoslav Republic of', @modifiedDate), ('Madagascar', @modifiedDate), ('Malawi', @modifiedDate),
	('Malaysia', @modifiedDate), ('Maldives', @modifiedDate), ('Mali', @modifiedDate),
	('Malta', @modifiedDate), ('Marshall Islands', @modifiedDate), ('Martinique', @modifiedDate),
	('Mauritania', @modifiedDate), ('Mauritius', @modifiedDate), ('Mayotte', @modifiedDate),
	('Mexico', @modifiedDate), ('Micronesia', @modifiedDate), ('Moldova', @modifiedDate),
	('Monaco', @modifiedDate), ('Mongolia', @modifiedDate), ('Montserrat', @modifiedDate),
	('Morocco', @modifiedDate), ('Mozambique', @modifiedDate), ('Myanmar', @modifiedDate),
	('Namibia', @modifiedDate), ('Nauru', @modifiedDate), ('Nepal', @modifiedDate),
	('Netherlands', @modifiedDate), ('Netherlands Antilles', @modifiedDate), ('New Caledonia', @modifiedDate),
	('New Zealand', @modifiedDate), ('Nicaragua', @modifiedDate), ('Niger', @modifiedDate),
	('Nigeria', @modifiedDate), ('Niue', @modifiedDate), ('Norfolk Island', @modifiedDate),
	('North Korea', @modifiedDate), ('Northern Mariana Islands', @modifiedDate), ('Norway', @modifiedDate),
	('Oman', @modifiedDate), ('Pakistan', @modifiedDate), ('Palau', @modifiedDate),
	('Palestinian Authority', @modifiedDate), ('Panama', @modifiedDate), ('Papua New Guinea', @modifiedDate),
	('Paraguay', @modifiedDate), ('Peru', @modifiedDate), ('Philippines', @modifiedDate),
	('Pitcairn Islands', @modifiedDate), ('Poland', @modifiedDate), ('Portugal', @modifiedDate),
	('Puerto Rico', @modifiedDate), ('Qatar', @modifiedDate), ('Réunion', @modifiedDate),
	('Romania', @modifiedDate), ('Russia', @modifiedDate), ('Rwanda', @modifiedDate),
	('Saint Helena', @modifiedDate), ('Saint Kitts and Nevis', @modifiedDate), ('Saint Lucia', @modifiedDate),
	('Saint Pierre and Miquelon', @modifiedDate), ('Saint Vincent and the Grenadine', @modifiedDate), ('Samoa', @modifiedDate),
	('San Marino', @modifiedDate), ('São Tomé and Príncipe', @modifiedDate), ('Saudi Arabia', @modifiedDate),
	('Senegal', @modifiedDate), ('Serbia and Montenegro', @modifiedDate), ('Seychelles', @modifiedDate),
	('Sierra Leone', @modifiedDate), ('Singapore', @modifiedDate), ('Slovakia', @modifiedDate),
	('Slovenia', @modifiedDate), ('Solomon Islands', @modifiedDate), ('Somalia', @modifiedDate),
	('South Africa', @modifiedDate), ('South Georgia and the South Sandwich Islands', @modifiedDate), ('Spain', @modifiedDate),
	('Sri Lanka', @modifiedDate), ('Sudan', @modifiedDate), ('Suriname', @modifiedDate),
	('Svalbard and Jan Mayen', @modifiedDate), ('Swaziland', @modifiedDate), ('Sweden', @modifiedDate),
	('Switzerland', @modifiedDate), ('Syria', @modifiedDate), ('Taiwan', @modifiedDate),
	('Tajikistan', @modifiedDate), ('Tanzania', @modifiedDate), ('Thailand', @modifiedDate),
	('Timor-Leste', @modifiedDate), ('Togo', @modifiedDate), ('Tokelau', @modifiedDate),
	('Tonga', @modifiedDate), ('Trinidad and Tobago', @modifiedDate), ('Tunisia', @modifiedDate),
	('Turkey', @modifiedDate), ('Turkmenistan', @modifiedDate), ('Turks and Caicos Islands', @modifiedDate),
	('Tuvalu', @modifiedDate), ('U.S. Minor Outlying Islands', @modifiedDate), ('Uganda', @modifiedDate),
	('Ukraine', @modifiedDate), ('United Arab Emirates', @modifiedDate), ('United Kingdom', @modifiedDate),
	('United States', @modifiedDate), ('Uruguay', @modifiedDate), ('Uzbekistan', @modifiedDate),
	('Vanuatu', @modifiedDate), ('Vatican City', @modifiedDate), ('Venezuela', @modifiedDate),
	('Vietnam', @modifiedDate), ('Virgin Islands, British', @modifiedDate), ('Virgin Islands, U.S.', @modifiedDate),
	('Wallis and Futuna', @modifiedDate), ('Yemen', @modifiedDate), ('Zambia', @modifiedDate),
	('Zimbabwe', @modifiedDate)

insert into dbo.Person (FirstName, LastName, ModifiedDate)
values
	('Nancy', 'Kapoor', @modifiedDate),
	('Tanya', 'Ramos', @modifiedDate),
	('Omar', 'Sun', @modifiedDate),
	('Kristine', 'Gomez', @modifiedDate),
	('Brianna', 'Miller', @modifiedDate),
	('Carly', 'Raje', @modifiedDate),
	('Sara', 'Cox', @modifiedDate),
	('Lance', 'Sanz', @modifiedDate),
	('Michael', 'Zwilling', @modifiedDate),
	('Kim', 'Abercrombie', @modifiedDate)

insert into dbo.Address (PersonId, AddressLine1, AddressLine2, City, PostalCode, CountryId, ModifiedDate)
values
	(
		(select PersonId from dbo.Person where FirstName = 'Nancy' and LastName = 'Kapoor'),
		'101, avenue des Champs-Elysées',
		NULL,
		'Colombes',
		'92700',
		(select CountryId from dbo.Country where Name = 'France'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Tanya' and LastName = 'Ramos'),
		'5275 Whitehall Drive',
		NULL,
		'Concord',
		'94519',
		(select CountryId from dbo.Country where Name = 'United States'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Omar' and LastName = 'Sun'),
		'8461 Lodge Drive',
		NULL,
		'Cranbourne',
		'3977',
		(select CountryId from dbo.Country where Name = 'Australia'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Kristine' and LastName = 'Gomez'),
		'Buergermeister-ulrich-str 5555',
		NULL,
		'Berlin',
		'12171',
		(select CountryId from dbo.Country where Name = 'Germany'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Brianna' and LastName = 'Miller'),
		'3491 Cook Street',
		NULL,
		'Haney',
		'V2W 1W2',
		(select CountryId from dbo.Country where Name = 'Canada'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Carly' and LastName = 'Raje'),
		'1097 Kulani Lane',
		NULL,
		'London',
		'SW19 3RU',
		(select CountryId from dbo.Country where Name = 'United Kingdom'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Sara' and LastName = 'Cox'),
		'8634 Lake Meadow Circle',
		NULL,
		'Runcorn',
		'TY31',
		(select CountryId from dbo.Country where Name = 'United Kingdom'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Lance' and LastName = 'Sanz'),
		'3859 Zand',
		NULL,
		'Lincoln Acres',
		'91950',
		(select CountryId from dbo.Country where Name = 'United States'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Michael' and LastName = 'Zwilling'),
		'6809 El Capitan Lane',
		NULL,
		'Concord',
		'94519',
		(select CountryId from dbo.Country where Name = 'United States'),
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Kim' and LastName = 'Abercrombie'),
		'969 Standing Grove Dr.',
		NULL,
		'Milsons Point',
		'2061',
		(select CountryId from dbo.Country where Name = 'Australia'),
		@modifiedDate
	)

insert into dbo.Phone(PersonId, PhoneNumber, ModifiedDate)
values
	(
		(select PersonId from dbo.Person where FirstName = 'Nancy' and LastName = 'Kapoor'),
		'697-555-0142',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Tanya' and LastName = 'Ramos'),
		'819-555-0175',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Omar' and LastName = 'Sun'),
		'212-555-0187',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Kristine' and LastName = 'Gomez'),
		'612-555-0100',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Brianna' and LastName = 'Miller'),
		'849-555-0139',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Carly' and LastName = 'Raje'),
		'122-555-0189',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Sara' and LastName = 'Cox'),
		'181-555-0156',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Lance' and LastName = 'Sanz'),
		'815-555-0138',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Michael' and LastName = 'Zwilling'),
		'185-555-0186',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Kim' and LastName = 'Abercrombie'),
		'330-555-2568',
		@modifiedDate
	)

insert into dbo.EmailAddress(PersonId, EmailAddress, ModifiedDate)
values
	(
		(select PersonId from dbo.Person where FirstName = 'Nancy' and LastName = 'Kapoor'),
		'nancy.kapoor@protonmail.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Tanya' and LastName = 'Ramos'),
		'tanya.ramos@outlook.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Omar' and LastName = 'Sun'),
		'omar.sun@gmail.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Kristine' and LastName = 'Gomez'),
		'kristine.gomez@protonmail.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Brianna' and LastName = 'Miller'),
		'brianna.miller@gmail.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Carly' and LastName = 'Raje'),
		'carly.raje@outlook.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Sara' and LastName = 'Cox'),
		'sara.cox@aol.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Lance' and LastName = 'Sanz'),
		'lance.sanz@outlook.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Michael' and LastName = 'Zwilling'),
		'michael.zwilling@outlook.com',
		@modifiedDate
	),
	(
		(select PersonId from dbo.Person where FirstName = 'Kim' and LastName = 'Abercrombie'),
		'kim.abercrombie@gmail.com',
		@modifiedDate
	)
