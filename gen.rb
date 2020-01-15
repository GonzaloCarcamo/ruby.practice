#Instrucción: el programa debe entregar un string con una cantidad de letras del abecedario (por orden) equivalente 
#al número ingresado. Ejemplo: si el número ingresado es 3, el string será abc.

puts "ingrese un número"
number = gets.chomp.to_i
a = 'a'
string = ''

number.times do
    string += a
    a = a.next
end

puts string