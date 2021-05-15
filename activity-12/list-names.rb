def list names
    # TODO
    arr_names = []
    if names.length <= 1
        names.each{|item| arr_names.push(item[:name])}
       return arr_names.join('')
    else
        names.each{|item| arr_names.push(item[:name])}
        list_name = arr_names.slice(0, arr_names.length-1).join(', ')
        return list_name + ' ' + '&' + ' ' + names[names.length-1][:name]
    end
end

p list([{name: 'Bart'}])