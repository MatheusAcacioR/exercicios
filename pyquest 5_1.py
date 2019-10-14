listanum = []
listanom = []
for c in range(0,2):
    listanum.append(float(input(f'Altura: ')))
    listanom.append(str(input(f'nome: ')))

print("pessoas com mais de 1,70 metros")

for c in range(0,2):
    if listanum[c] > 1.70:
        print(listanom[c])