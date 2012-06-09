xml.instruct!
xml.list do
  if @capital_city.empty?
    xml.item
  else
    xml.item @capital_city[0]['name']
  end
end