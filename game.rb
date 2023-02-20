items = ['Камень', 'Ножницы', 'Бумага']

user = 0
comp = 0
while user < 3 && comp < 3
b = rand(3)
puts "\nвведите вариант: 1 - камень, 2 - ножницы, 3 - бумага"
a = gets.to_i - 1
    while a < 0 || a > 2
        puts "Пожалуйста введите число от 1 до 3"
        a = gets.to_i - 1
    end
    puts "Вы выбрали: #{items[a].to_s}"

    puts "Компьютер выбрал: #{items[b].to_s}"

    if a == b
        puts "Ничья"
    else
        if (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0) 
            puts 'Вы победили!'
            user += 1
        else
            puts 'Победил Компьютер ;('
            comp += 1
        end
    end
        
    sleep 1
    puts "Счёт #{user} : #{comp}"
    sleep 1
end

if user > comp
    puts "Вы выйграли"
else
    puts "Вы проиграли"
end