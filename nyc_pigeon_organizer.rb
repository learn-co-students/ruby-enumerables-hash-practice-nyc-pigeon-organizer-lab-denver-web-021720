def nyc_pigeon_organizer (data)
  pigeon_hash = {}

  data.each do |inner_hash, all_other|
    all_other.each do |category, array|
      array.each do |name|
        pigeon_hash[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  keys = pigeon_hash.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      keys.each do |item|
        if bird_name === item
          pigeon_hash[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      keys.each do |item|
        if bird_name === item
          pigeon_hash[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      keys.each do |item|
        if bird_name === item
          pigeon_hash[item][:lives] << location
        end 
      end 
    end 
  end 
  return pigeon_hash 
end 