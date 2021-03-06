#!/usr/bin/env ruby
require 'json'
require_relative 'output_pdf.rb'
require 'open-uri'
require 'base64'
require 'csv'

data ='{"applicant":{"residences":[{"rent":"500","address_id":0,"current":true,"end_date":"","landlord":{"address":{"apt":"","zip":"20009","city":"Washington","state":"DC","street":"800 Fake St.NW"},"cell_phone":"","citizenship":"","city_of_birth":"","country_of_birth":"","dob":"","driver_license_exp_date":"","driver_license_number":"","driver_license_state":"","email":"","ethnicity":"","first_name":"Johnny","gender":"","home_phone":"","last_name":"Slumlord","mailing_address_id":"","marital_status":"","middle_name":"","occupation":"","race":"","ssn":"","state_of_birth":"","student_status":"","work_phone":"202-777-9999"},"reason":"Eviction","start_date":"2012-09-01","id":0},{"current":true},{"id":1,"start_date":"2017-10-01","reason":"None","landlord":{"work_phone":"202-555-555","student_status":"","state_of_birth":"","ssn":"","race":"","occupation":"","middle_name":"","marital_status":"","mailing_address_id":"","last_name":"Donahu","home_phone":"","gender":"","first_name":"Frank","ethnicity":"","email":"","driver_license_state":"","driver_license_number":"","driver_license_exp_date":"","dob":"","country_of_birth":"","city_of_birth":"","citizenship":"","cell_phone":"","address":{"street":"7000 Another St. NE","state":"DC","city":"Washington","zip":"20001","apt":""}},"end_date":"2017-10-27","current":false,"address_id":1,"rent":"500"}],"previous_ssns":[],"person":{"drive_licenese_exp_date":"2018-11-08","work_phone":"202-202-2020","student_status":"Not a student","state_of_birth":"VA","ssn":"555-55-5555","race":"Black","occupation":"Developer","middle_name":"Lomax","marital_status":"Single","mailing_address_id":"0","last_name":"Test","home_phone":"(202) 888-9999","gender":"Male","first_name":"Andrew","ethnicity":"NotHispanic","email":"test@breadforthecity.org","driver_license_state":"VA","driver_license_number":"T999999Z","driver_license_exp_date":null,"dob":"1908-04-01","country_of_birth":null,"city_of_birth":"Norfolk","citizenship":"US Citizen","cell_phone":"202-995-8899"},"incomes":[{"interval":"monthly","income_type":"part-time","id":0,"amount":1000},{"id":1,"interval":"monthly","income_type":"social_security","amount":"500"}],"housing_forms":[],"household_members":[{"dob":"1995-08-19","ssn":"555-55-5555","last_name":"Laker","first_name":"Georgina","relationship":"Daughter","member":{"work_phone":null,"student_status":null,"state_of_birth":null,"ssn":null,"race":null,"occupation":null,"middle_name":null,"marital_status":null,"mailing_address_id":null,"last_name":"Levy","home_phone":null,"gender":null,"first_name":"Shandra","ethnicity":null,"email":null,"driver_license_state":null,"driver_license_number":null,"driver_license_exp_date":null,"dob":"1988-05-11","country_of_birth":null,"city_of_birth":null,"citizenship":null,"cell_phone":null},"id":0,"home_phone":"555-555-5555","cell_phone":"202-555-5555","work_phone":"757-555-5555"}],"employments":[{"address":{"apt":"","zip":"","city":"Washington","id":"","state":"DC","street":"7500 16th St. NW"},"current":true,"employer_name":"Bread for the City","end_date":"","part_time":false,"phone":"202-555-555","position":"Data Analyst","start_date":"2012-04-01","supervisor_name":"Jeddy","id":0},{"id":1,"supervisor_name":"Boss","start_date":"2009-09-09","position":"Developer","phone":"202-555-5555","part_time":false,"end_date":"2012-09-09","employer_name":"Y Combinator","current":false,"address":{"street":"500 14th St. NW","state":"DC","id":"","city":"Washington ","zip":"","apt":""}}],"criminal_histories":[{"crime_type":"Misdemeanor","state":"VA","description":"","year":"2004","id":0},{"id":1,"year":"2012","description":"","state":"DC","crime_type":"Felony"}],"aliases":[],"addresses":[{"zip":"20009","street":"1525 7th St","state":"DC","residence":true,"id":0,"city":"Washington","apt":null},{"street":"3800 A St","state":"DC","residence":true,"id":1,"city":"Washington","apt":null},{"street":"1525 7th St.","state":"DC","residence":false,"id":2,"city":"Washington","apt":null},{"street":"1840 Good Hope Rd.","state":"DC","residence":null,"id":3,"city":"Washington","apt":null}],"contacts":[{"address":{"apt":"","zip":"20001","city":"Washington","state":"DC","street":"20 10th St. NW"},"cell_phone":"808-999-0001","relationship":"Sister","first_name":"Omelette","home_phone":"900-555-5555","last_name":"Du Fromage","work_phone":"202-555-5555","id":0},{"id":1,"work_phone":"555-555-5555","last_name":"Locust","home_phone":"202-555-5555","first_name":"Sara","relationship":"Grandmother","cell_phone":"555-555-555","address":{"street":"999-999-9999","state":"DC","city":"Washington","zip":"20035","apt":""}}]},"form":{"path":"'

pdfs=[
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/1330+Fill+2014.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Allen+House.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Benning+Heights+Apartments.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/CongressPark2013.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Dupont+Park+Adventist+Apartments.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Garfield+Hills.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Girard+St+Apts.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Hedin+House.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/North+Cap+Plymouth.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Parkchester+I+Apartments.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Robert+L+Walker+House.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Samuel+Kelsey+Apartments.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/Victory+Heights.pdf",
  "https://s3-us-west-2.amazonaws.com/bread-district-housing/forms/View.pdf"
]

field_data = CSV.read("valid_fieldnames.csv", { encoding: "UTF-8", headers: true, converters: :all})
fieldnames = field_data.map { |d| d['field'] }
fieldcheck = field_data.map { |d| d.to_hash }

filled = nil
total = nil

pdfs.each do |pdf|
  puts "#{(filled.to_f/total.to_f*100).floor}% (#{filled}/#{total}) covered" unless total.nil?

  d = JSON.parse(data + pdf + '"}}')
  form = d['form']
  applicant = d['applicant']
  name = /.+\/(.+).pdf$/.match(pdf)[1].gsub("+", " ")

  puts "\n-----------------------------\n" + name + "\n-----------------------------\n"

  form['filled_path'] = "/tmp/#{name}.pdf"

  form['tmp_path'] = "/tmp/#{name}_tmp.pdf"
  File.open(form['tmp_path'], "wb") do |file|
    file.write open(form['path']).read
  end

  output = OutputPDF.new(form, applicant)
  fields = output.filled_values

  filled = 0
  total = 0
  fields.each_with_index do |f,i|
    next if not fieldnames.include?(f.name)
    total += 1
    row = fieldcheck.select { |r| r['field'] == f.name }[0]
    row[name] = f.value == '' ? 0 : 1
    if f.value != ''
      filled += 1
    else
      puts "missed: #{f.name}"
    end

    $stdout.flush
    sleep 0.05
  end
end
puts "#{(filled.to_f/total.to_f*100).floor}% (#{filled}/#{total}) covered"

# keys = fieldcheck.flat_map(&:keys).uniq
# CSV.open('check.csv', "wb") do |csv|
#   csv << keys
#   fieldcheck.each do |hash|
#     csv << hash.values_at(*keys)
#   end
# end
