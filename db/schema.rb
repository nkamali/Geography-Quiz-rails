# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110417161931) do

  create_table "cities", :force => true do |t|
    t.string  "name",        :limit => 35, :default => "", :null => false
    t.string  "countrycode", :limit => 3,  :default => "", :null => false
    t.string  "district",    :limit => 20, :default => "", :null => false
    t.integer "population",  :limit => 11, :default => 0,  :null => false
  end

  create_table "countries", :primary_key => "code", :force => true do |t|
    t.string  "name",           :limit => 52, :default => "",     :null => false
    t.string  "continent",      :limit => 14, :default => "Asia", :null => false
    t.string  "region",         :limit => 26, :default => "",     :null => false
    t.float   "surfacearea",    :limit => 10, :default => 0.0,    :null => false
    t.integer "indepyear",      :limit => 6
    t.integer "population",     :limit => 11, :default => 0,      :null => false
    t.float   "lifeexpectancy", :limit => 3
    t.float   "gnp",            :limit => 10
    t.float   "gnpold",         :limit => 10
    t.string  "localname",      :limit => 45, :default => "",     :null => false
    t.string  "governmentform", :limit => 45, :default => "",     :null => false
    t.string  "headofstate",    :limit => 60
    t.integer "capital",        :limit => 11
    t.string  "code2",          :limit => 2,  :default => "",     :null => false
  end

  add_index "countries", ["capital"], :name => "index_countries_on_capital"
  add_index "countries", ["code"], :name => "index_countries_on_code"
  add_index "countries", ["code"], :name => "sqlite_autoindex_countries_1", :unique => true

  create_table "country_languages", :id => false, :force => true do |t|
    t.string "countrycode", :limit => 3,  :default => "",  :null => false
    t.string "language",    :limit => 30, :default => "",  :null => false
    t.string "isofficial",  :limit => 1,  :default => "F", :null => false
    t.float  "percentage",  :limit => 4,  :default => 0.0, :null => false
  end

  add_index "country_languages", ["countrycode"], :name => "index_country_languages_on_countrycode"

end
