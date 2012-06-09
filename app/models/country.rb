class Country < ActiveRecord::Base
  has_many :cities, :foreign_key => "countrycode"
  has_many :country_languages
  
  scope :continent, lambda {|country_name| where(["name = ?", country_name]) }    
  
  # SELECT SurfaceArea FROM Country where Name = 'XXX';
  scope :surface_area, lambda {|country_name| where(["name = ?", country_name]) }    
  
end
