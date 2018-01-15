#Afficher la somme des multiples de 3 et 5 inferieur a 1000

sum = 0
(1..999).each do |i|
	if i % 3 == 0 || i % 5 == 0
		sum += i
	end
end
puts sum