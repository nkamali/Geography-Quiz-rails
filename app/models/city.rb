class City < ActiveRecord::Base  
  belongs_to :country, :foreign_key => "code"
  
  # SELECT Name FROM world.City where id = (SELECT Capital FROM world.Country WHERE Name = 'XXX'  
  scope :capital_city, lambda {|country_name| where(["cities.id = (SELECT countries.capital FROM countries WHERE countries.name = ?)", country_name]) }
  # scope :capital_city, lambda {|country_name| where("country.name=?", country_name) }
  
  #SELECT Name FROM City WHERE Population >1000000 AND CountryCode = (SELECT Code FROM Country WHERE Name = 'XXX')
  scope :large_cities, lambda {|country_name| where(["population >1000000 AND countrycode = (SELECT countries.code FROM countries WHERE name = ?)", country_name]).order('cities.name desc') }
end
