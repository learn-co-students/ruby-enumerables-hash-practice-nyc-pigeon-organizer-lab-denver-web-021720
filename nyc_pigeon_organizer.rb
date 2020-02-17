def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |attributes, value|
    value.each do |value, array|
      array.each do |name|
        if hash[name] == nil 
          hash[name] = {}
           hash[name][attributes] = []
        else 
          hash[name][attributes] = []
        end   
      end 
    end
  end  
  hash.each do |name, value|
    value.each do |hashvalue, array|
      data.each do |attributes, values|
        values.each do |value, array|
          array.each do |element|
            if element == name && hashvalue == attributes
              hash[name][hashvalue] << value.to_s 
            end 
          end 
        end
      end 
    end 
  end
  hash
end
