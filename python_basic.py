i = 1

while i <= 3:
    j = 1
    while j <= 2:
        print("i:", i, "j:", j)
        j += 1
    i += 1
    
    
for i in range(1, 4):
    j = 1
    while j <= 2:
        print("i:", i, "j:", j)
        j += 1
        
        i = 1

while i <= 3:
    for j in range(1, 3):
        print("i:", i, "j:", j)
    i += 1
    
    
    
    for i in range(1, 4):
     for j in range(1, 3):
        print("i:", i, "j:", j)