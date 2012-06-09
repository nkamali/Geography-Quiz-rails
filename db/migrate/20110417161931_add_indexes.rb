class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index(:countries, :capital)
    add_index(:countries, :code)
    add_index(:country_languages, :countrycode)
  end

  def self.down
  end
end
