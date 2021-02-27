## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

lines = File.readlines("data/3.txt")

result = 0
lines.each do |line|
	numbers = line.split(/\t/).map(&:to_i) # = .map { |val| val.to_i }
	if (numbers.size > 0)
		min = numbers[0]
		max = numbers[0]
		for number in numbers
			if min > number
				min = number
			elsif max < number
				max = number
			end
		end
		result += max - min
	end

	# Можно и встроенное решение использовать
	# result += numbers.max - numbers.min
end

puts result
