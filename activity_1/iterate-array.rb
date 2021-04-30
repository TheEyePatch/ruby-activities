array_int = [1,2,3,4,5,6,7,8,9,10]
array_int.each{|i| puts i}
/puts array_int/

h = {a:1, b:2, c:3, d:4}
h.merge!(e:5)
puts h

contact_data = [["ana@email.com", "123 Main st.", "555-123-4567"], ["avion@email", "404 Not Found Dr.", "123-234-3454"]]
# puts contact_data

contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}
contacts.each_with_index do |item, index|
    item[1][:email] = contact_data[index][0]
    item[1][:address] = contact_data[index][1]
    item[1][:phone] = contact_data[index][2]
end
p contacts


