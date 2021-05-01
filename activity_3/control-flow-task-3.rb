def loop
    input = ''
    while input != 'STOP'
        p 'Write a name or type STOP'
        input = gets.chomp
        if input != 'STOP'
            arr = []
            p "Hello #{input}"
            p "The last letter of your name is #{input[input.length-1]}"
            p "The first letter of your name is #{input[0]}"
            letters = input.split('')
            letters.each do |letter| 
                if letter != ' ' && letter != '.'
                    arr.push(letter)
                end
            end
            p  "Your name has #{arr.length} letters"
        end
    end
end
loop