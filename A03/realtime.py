def verify(newElement,i):
    return True if newElement[0:i] == encodedMsg[0:i] else False

#Get all data
data = open('data.txt', 'r')
lines = data.readlines()
symbols = {}
count = 1
for line in lines:
    if count == 1:
        encodedMsg = line.strip()
    elif count == 2:
        originalMsg = line.strip()
    else:
        line = line.split()
        symbols[line[0]] = line[1]
    count+=1
data.close()
"""
encodedMsg -> Mensagem codificada
originalMsg -> Mensagem original (descodificada)
symbols -> dicionario com todos os simbolos e respetivos codigos
"""
tempDecode = [[str(i), symbols.get(str(i))] for i in range(0,len(symbols))]
ma = 0
for i in range(1, len(encodedMsg)+1):
    j = 0
    remove = [] #guarda os indices a remover da lista de possibilidades
    rangeOffset = len(tempDecode) #numero de possibilidades no inicio da iteração
    if rangeOffset > ma: #guardar o numero maximo de possibilidades consideradas ao mesmo tempo
            ma = rangeOffset
    for j in range(0, rangeOffset):
        if tempDecode[j][1] == encodedMsg: #Verificar se já foi encontrada a solução
            tempDecode = [tempDecode[j][0], tempDecode[j][1]]
            print(f"{len(symbols)}\t{ma}\t{encodedMsg}\t{tempDecode[0]}\t{encodedMsg == tempDecode[1]}")
            exit()
        if (i > len(tempDecode[j][1])):
            for k in range(0, len(symbols)):
                newElement = [tempDecode[j][0] + str(k), tempDecode[j][1] + symbols.get(str(k))] #elemento a adicionar
                remove.append(j) #adicionar à lista de indices a eliminar mais tarde
                tempDecode.append(newElement)
        if not verify(tempDecode[j][1], i):
            remove.append(j)
    newDecode = list(tempDecode)
    for j in list(set(remove)): #remover os elementos anteriormente definidos
        newDecode.remove(tempDecode[j])
    tempDecode = list(newDecode)
    remove=[]
print(f"ERRO\t{len(symbols)}\t{ma}\t{encodedMsg}\t{tempDecode}") #Caso não cheguemos a uma solução