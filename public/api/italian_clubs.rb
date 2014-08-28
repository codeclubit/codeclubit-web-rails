require 'json'

italians = Array.new

file = open("clubs.json")
json = file.read

parsed = JSON.parse(json)

parsed["clubs"].each do |club|
  p club["venue"]["country"]["code"]
  code = club["venue"]["country"]["code"]
  if code == "IT" 
	puts "trovato"
        italians << club
  end
end


it = JSON.generate(italians)

fileo = open("clubs_it.json", "w")
fileo.write('{"clubs":' + it.to_s + '}')
puts it.to_s
