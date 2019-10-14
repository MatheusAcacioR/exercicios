listmat = []
listsal = []
listdesc = []
listliq = []
teste = 2

for m in range(teste):
    listmat.append(input("matricula: "))
    listsal.append(float(input("salario: ")))
    listdesc.append((listsal[m] * 11)/100)
    listliq.append(listsal[m] - listdesc[m])

print("As matriculas foram {}" .format(listmat))
print("Os salários foram {}" .format(listsal))
print("Os descontos foram {}" .format(listdesc))
print("Os salários liquidos foram {}" .format(listliq))