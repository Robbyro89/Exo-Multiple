prix_achat = [17,3,6,9,15,8,6,1,10]
prix_vente = [5, 8, 19, 4, 3, 15, 10, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 16]


def trader_du_dimanche(prix)
x = prix.length-1
tab = []
grostab = []

for i in (0..x)
	string =  "jour #{i}   "

			for a in (0..i)
			diff = prix [i]-prix[a]
			tab << diff
			end

	tab << i
	grostab << tab
	tab = []
end

highday = grostab.max { |a, b| a.max <=> b.max }
highdaybis = highday[0...-1]



benef = highdaybis.max
jourachat = highdaybis.index(highdaybis.max)
jourvente = highday.last

print highdaybis

puts "[#{jourachat} ; #{jourvente}]  prix achat : #{prix[jourachat]} $  prix vente : #{prix[jourvente]} $ bénéfice : #{benef} $"

end

trader_du_dimanche(prix_achat)
trader_du_dimanche(prix_vente)