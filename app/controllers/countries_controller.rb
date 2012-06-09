class CountriesController < ApplicationController
  
  # GET /countries/continent.xml?country=United States
  def continent
    @continent = Country.continent(params[:country])
    
    respond_to do |format|
      format.xml #{ render :xml => @continent }
    end
  end
  
  # GET /countries/surface_area.xml?country=United States
  def surface_area
    @surface_area = Country.surface_area(params[:country])
    
    respond_to do |format|
      format.xml #{ render :xml => @continent }
    end
  end

end
