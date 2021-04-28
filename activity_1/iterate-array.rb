array_int = [1,2,3,4,5,6,7,8,9,10]
array_int.each{|i| puts i}
/puts array_int/

h = {a:1, b:2, c:3, d:4}
h.merge!(e:5)
puts h

contact_data = [["ana@email.com", "123 Main st.", "555-123-4567"], ["avion@email", "404 Not Found Dr.", "123-234-3454"]]
# puts contact_data

contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}
contacts.each do |key, value|
    contact_data.each{|item| value.merge!(name: item[0])}
    contact_data.each{|item| value.merge!(address: item[1])}
    contact_data.each{|item| value.merge!(phone: item[2])}
    
end
puts contacts


