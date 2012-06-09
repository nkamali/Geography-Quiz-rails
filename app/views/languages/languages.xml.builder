xml.instruct!
xml.list do
  @languages.each do |language|
    xml.item language['language']
  end  
end