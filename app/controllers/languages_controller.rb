class LanguagesController < ApplicationController
  
  # GET /country_languages/languages.xml?country=United States
  def languages
    @languages = CountryLanguage.languages(params[:country])
    
    respond_to do |format|
      format.xml #{ render :xml => @languages }
    end
  end

end
