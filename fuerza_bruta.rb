# Encontrar el número de combinaciones posibles para ingresar clave correcta.

puts "ingresa clave"
pass = gets.chomp
new_pass = "a"
attempts = 0

until new_pass == pass
    puts "#{attempts} attempts"
begin
    new_pass = new_pass.next
    attempts += 1
    end
end
