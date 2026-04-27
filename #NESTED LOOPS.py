#NESTED LOOPS
i = 1
while i <= 3:
    j = 1
    while j <= 3:
        print(i,j)
        j+=1
    i+=1

for i in range (1,5):
    j = 1
    while j <=5:
        print(i,j)
        j+= 1   

i = 1
while i<=3:
    for j in range (1,3):
        print(i,j)
    i+=1


for i in range (1,5):
    for j in range(1,5):
        print(i,j)