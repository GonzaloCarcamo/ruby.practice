#generar nuevo array con valores multiplicador por el multiplicar asignado

mult = ARGV[0].to_i
array = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
i = 0
new_array = []

while i < array.count
    new_array.push(array[i].to_i*mult)
    i += 1
end

puts
print new_array


