class CitiesController < ApplicationController
  
  # GET /cities/capital_city.xml?country=United States
  def capital_city
    @capital_city = City.capital_city(params[:country])
    
    respond_to do |format|
      format.xml #  { render :xml => @capital_city }
    end
  end

  # GET /cities/large_cities.xml?country=United States
  def large_cities
    @large_cities = City.large_cities(params[:country])
    
    respond_to do |format|
      format.xml #{ render :xml => @large_cities }
    end
  end

end
