# README
This is an API with some basic nutritional data on raw fruits and vegetables.

* Ruby 2.6.1
* Rails 6.0.0

Rails file created via command line with 'rails new juice-api --api'
Note: cors file set to accept requests from any origin

* To Initialize Database
From command line, run:
1. bundle install
2. rails db:migrate
3. rails db:seed

Modified data retrieved from: 
    US Department of Agriculture, Agricultural Research Service, Nutrient Data Laboratory. USDA National Nutrient Database for Standard Reference, Release 27. Version Current: August 2014. Internet: http://www.ars.usda.gov/nea/bhnrc/ndl https://doi.org/10.1016/j.jfca.2009.01.003

Database seeded from CSV file located in '/lib/FruitVegData.csv'
