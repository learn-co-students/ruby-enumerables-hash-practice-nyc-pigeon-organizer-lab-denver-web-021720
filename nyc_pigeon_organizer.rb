def nyc_pigeon_organizer(data)
  result = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !result[name]
          result[name] = {}
        end

        if !result[name][key]
          result[name][key] = []
        end

        result[name][key] << new_value.to_s

      end
    end
  end
  return result
end
