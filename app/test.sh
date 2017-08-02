#!/bin/sh

./app.rb '{"applicant":{"residences":[],"previous_ssns":[],"person":{"work_phone":null,"student_status":null,"state_of_birth":null,"ssn":"555-55-5555","race":"Black/African American","occupation":"Developer","middle_name":"Lomax","marital_status":null,"mailing_address_id":"0","last_name":"Test","home_phone":"(202) 888-9999","gender":"Male","first_name":"Andrew","ethnicity":"Human","email":"test@test.org","driver_license_state":null,"driver_license_number":null,"driver_license_exp_date":null,"dob":"1988-03-20","country_of_birth":null,"city_of_birth":null,"citizenship":null,"cell_phone":"(202) 555-9888"},"incomes":[{"interval":"monthly","income_type":"disability_benefits","id":0,"amount":900},{"interval":"monthly","income_type":"social_security","id":1,"amount":500},{"interval":"monthly","income_type":"social_security","id":2,"amount":1000}],"housing_forms":[],"household_members":[{"relationship":"Parent","member":{"work_phone":null,"student_status":null,"state_of_birth":null,"ssn":null,"race":null,"occupation":null,"middle_name":null,"marital_status":null,"mailing_address_id":null,"last_name":"Dent","home_phone":null,"gender":null,"first_name":"Harvey","ethnicity":null,"email":null,"driver_license_state":null,"driver_license_number":null,"driver_license_exp_date":null,"dob":"1945-11-20","country_of_birth":null,"city_of_birth":null,"citizenship":null,"cell_phone":null},"id":0},{"relationship":"Dependent","member":{"work_phone":null,"student_status":null,"state_of_birth":null,"ssn":null,"race":null,"occupation":null,"middle_name":null,"marital_status":null,"mailing_address_id":null,"last_name":"Harris","home_phone":null,"gender":null,"first_name":"Shandra","ethnicity":null,"email":null,"driver_license_state":null,"driver_license_number":null,"driver_license_exp_date":null,"dob":"1988-05-08","country_of_birth":null,"city_of_birth":null,"citizenship":null,"cell_phone":null},"id":1}],"employments":[{"address":{"apt":"","city":"","id":"","state":"","street":""},"current":true,"employer_name":"Bread for the City","end_date":"2017-08-09","part_time":false,"phone":"","position":"Data Analyst","start_date":"2016-05-11","supervisor_name":"","id":0}],"criminal_histories":[],"aliases":[],"addresses":[{"street":"400 Fairmont St","state":"DC","residence":null,"id":0,"city":"Washington","apt":null},{"street":"58 Q St.","state":"DC","residence":null,"id":1,"city":"Washington","apt":null},{"street":"1840 Good Hope Rd.","state":"DC","residence":null,"id":2,"city":"Washington","apt":null},{"street":"1525 7th St.","state":"DC","residence":null,"id":3,"city":"Washington","apt":null}]},"form":{"path":"https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/CongressPark2013.pdf","name":"Congress Park I & II"}}'
