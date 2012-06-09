class CountryLanguage < ActiveRecord::Base
  set_primary_key "rowid"
  
  belongs_to :country
  
  scope :languages, lambda {|country_name| where(["countrycode = (SELECT countries.code FROM countries WHERE countries.name = ?)", country_name]).order('percentage desc') }
end
