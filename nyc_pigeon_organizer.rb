def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.reduce(new_hash) do |memo, (key, value)| 
    value.reduce(new_hash) do |memo, (key2, value2)|
      counter = 0 
      
      while counter < value2.length do 
        if !new_hash.key?(value2[counter])
          new_hash[value2[counter]] = {}
        end
        
        if new_hash[value2[counter]].key?(key)
          new_hash[value2[counter]][key] << key2.to_s
        else
          new_hash[value2[counter]][key] = [key2.to_s]
        end
        
        counter += 1 
      end
    end
    
    memo
  end
  
  puts new_hash
  new_hash
end