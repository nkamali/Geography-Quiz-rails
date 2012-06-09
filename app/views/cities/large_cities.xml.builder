xml.instruct!
xml.list do  
  if @large_cities.empty?
    xml.item
  else
    @large_cities.each do |large_city|
      xml.item large_city['name']
    end
  end
end