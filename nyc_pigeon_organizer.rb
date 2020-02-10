require "pry"

# pigeon_data = {
#         :color => {
#           :purple => ["Theo", "Peter Jr.", "Lucky"],
#           :grey => ["Theo", "Peter Jr.", "Ms. K"],
#           :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#           :brown => ["Queenie", "Alex"]
#         },
#         :gender => {
#           :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#           :female => ["Queenie", "Ms. K"]
#         },
#         :lives => {
#           "Subway" => ["Theo", "Queenie"],
#           "Central Park" => ["Alex", "Ms. K", "Lucky"],
#           "Library" => ["Peter Jr."],
#           "City Hall" => ["Andrew"]
#         }
#       }
      
      
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |attribute,values|
    values.each do |value,names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = []
        end  
        
      pigeon_list[name][attribute] << value.to_s
      end
    end
  end
  pigeon_list
  
  # data.find do |
  # input HoHoA - [key attribute][key attr_values][value names]
  # output HoHoA - [key names][key attribute][value attr_values]
  
  # colors = pigeon_data[:color].keys # .map {|sym| puts sym} # list of :color values
  # loop through each color key and return name if

  # if pigeon_list.find(data[:color].each_pair {|key,value| puts value}) == false
  #   pigeon_list
  # end
  # # pigeon_list["Theo"] =  attributes.each{|key|puts key}
  # return pigeon_list
end

# turn name values into keys
# turn attr_values keys into strings, values
# attribute keys remain keys, each name has all attribute keys
# data.find name in pidgon_list hash, if does not exist, add to hash