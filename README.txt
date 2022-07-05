Functiile in care trebuie prelucrate imagini RGB:
	-> toate functiile urmaresc aceeasi logica(se determina matricea de pixeli pentru rosu, verde si albastru) si se apeleaza functia specifica
Functia surrounding_points:
	-> aflu punctele reale aflate in vecinatatea celor date ca parametru
Task 1 - Interpolare Proximala
	*proximal_2x2: -> determina punctele intermediare x, y
			    -> calculeaza matricea de pixeli, afland cel mai apropiat pixel de imaginea initiala
	*proximal_coef: -> calcularea coeficientilor
	*proximal_resize: -> calculez factorii de scalare
				-> pentru fiecare punct se calculeaza x_p si y_p
				-> calculez valoarea pixelului din imaginea finala cu ajutorul lor
	*proximal_rotate:
				-> se calculeaza sinusul si cosinusul unghiului de rotatie
				-> se calculeaza matricea de transformare si dupa inversa ei
				-> aplicam transformarile explicate in cod pentru a obtine imaginea finala
	*surrounding_points:
				-> ne ajuta sa calculam punctele aflate in vecinantatea a 2 puncte date
Task 2 - Interpolare Bicubic
	*bicubic_coef:
			-> se calculeaza matricile intermediare (primele 2 matrici sunt date in enunt, cea de a 3a se obtine cu ajutorul functiei date ca parametru)
			-> se convertesc la tipul de data double si se determina matricea finala
	*bicubic_resize:
			-> calculez factorii de scalare
			-> pentru fiecare punct se calculeaza x_p si y_p
			-> calculez valoarea pixelului din imaginea finala cu ajutorul lor
	*fx:
		-> calculez derivata in functie de x
	*fy:
		-> calculez derivata in functie de y
	*fxy:
		-> calculez derivata in functie de x si y
	*precalc_d:
		-> se calculeaza cele 3 matrici de derivate
Task 3 - Interpolare Lanczos
	-> la toate cele 3 functii am urmarit cat am putut de bine algoritmul in pseudocod oferit in enunt
		