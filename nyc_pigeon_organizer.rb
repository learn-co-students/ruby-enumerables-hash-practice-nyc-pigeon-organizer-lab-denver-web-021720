require 'pry'
data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



#def nyc_pigeon_organizer(data)
  # write your code here!
newHash = {}
color = data[:color]
a = color.reduce({}) do |memo,(key, value)|
  i = 0
#binding.pry
  while i<color[key].length
      #binding.pry
    if newHash[value[i].to_sym]
      binding.pry
      newHash[value[i].to_sym].push(key.to_s)
    else
      newHash[value[i].to_sym] = [key.to_s]
    end
    i=i+1
  end
end
  puts newHash

#end
