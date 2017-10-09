#!/bin/sh

./app.rb '{"applicant":{"residences":[{"address_id":0,"current":true,"end_date":"2017-08-30","landlord":{"cell_phone":"","citizenship":"","city_of_birth":"","country_of_birth":"","dob":"","driver_license_exp_date":"","driver_license_number":"","driver_license_state":"","email":"","ethnicity":"","first_name":"Stan","gender":"","home_phone":"","last_name":"Lee","mailing_address_id":"","marital_status":"","middle_name":"","occupation":"","race":"","ssn":"","state_of_birth":"","student_status":"","work_phone":"(555) 555-5555","address":{"street":"700 Hirsh St. NW","city":"Washington","state":"DC","zip":"20009"}},"reason":"Voluntary","start_date":"2017-08-11","id":0,"rent":"500"}],"previous_ssns":[],"person":{"drive_licenese_exp_date":"2017-08-16","work_phone":"(555) 555-5555","student_status":"Part-time","state_of_birth":"Wakanda","ssn":"555-55-5555","race":"Black","occupation":"Developer","middle_name":"Lomax","marital_status":"Divorced","mailing_address_id":"0","last_name":"Test","home_phone":"(202) 888-9999","gender":"Male","first_name":"Andrew","ethnicity":"NotHispanic","email":"test@test.org","driver_license_state":"WK","driver_license_number":"T999999Z","driver_license_exp_date":null,"dob":"1988-03-20","country_of_birth":null,"city_of_birth":"Golden City","citizenship":"Non-Citizen with eligible immigration status","cell_phone":"(202) 555-9888"},"incomes":[{"interval":"monthly","income_type":"disability_benefits","id":0,"amount":900},{"interval":"monthly","income_type":"social_security","id":1,"amount":500},{"interval":"monthly","income_type":"social_security","id":2,"amount":1000}],"housing_forms":[],"household_members":[{"relationship":"Grandfather","member":{"work_phone":"(555) 555 - 5555","student_status":null,"state_of_birth":null,"ssn":"555-55-5555","race":null,"occupation":null,"middle_name":null,"marital_status":null,"mailing_address_id":null,"last_name":"Dent","home_phone":"(555) 555 - 5555","gender":null,"first_name":"Harvey","ethnicity":null,"email":null,"driver_license_state":null,"driver_license_number":null,"driver_license_exp_date":null,"dob":"1945-11-20","country_of_birth":null,"city_of_birth":null,"citizenship":null,"cell_phone":"(555) 555 - 5555"},"id":0,"first_name":"John","last_name":"Griffin","ssn":"555-55-5555","dob":"2019-09-09","home_phone":"757-555-5555","cell_phone":"757-666-6666"}],"employments":[{"address":{"apt":"","city":"Washington","id":"","state":"DC","street":"700 7th St. NW"},"current":true,"employer_name":"Bread for the City","end_date":"2017-08-09","part_time":false,"phone":"(555) 555 - 5555","position":"Data Analyst","start_date":"2016-05-11","supervisor_name":"Jeddy","id":0}],"criminal_histories":[{"crime_type":"misdemeanor","description":"DWB","year":"1976","id":0,"state":"VA"}],"aliases":[],"addresses":[{"street":"400 Fairmont St","state":"DC","residence":true,"id":0,"city":"Washington","apt":"300"},{"street":"58 Q St.","state":"DC","residence":null,"id":1,"city":"Washington","apt":null},{"street":"1840 Good Hope Rd.","state":"DC","residence":null,"id":2,"city":"Washington","apt":null},{"street":"1525 7th St.","state":"DC","residence":null,"id":3,"city":"Washington","apt":null}],"contacts":[{"id":0,"work_phone":"","last_name":"Test","home_phone":"","first_name":"Brian","relationship":"Brother","cell_phone":"808-555-5555","address":{"street":"800 Fake St. NW","state":"DC","city":"Washington","zip":"20009","apt":""},"ssn":""}]},"form":{"path":"https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/CongressPark2013.pdf","name":"Congress Park I & II"}}'
