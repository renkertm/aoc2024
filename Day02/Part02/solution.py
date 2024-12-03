file = open("input.txt")

safes = 0

for line in file:
    run = True
    level = list(map(int, line.split(" ")))
    tlevel = level.copy()
    c = -1
    while run:
        sortedLevel = tlevel.copy()
        sortedLevel.sort()
        revsortedLevel = tlevel.copy()
        revsortedLevel.sort(reverse=True)
        if tlevel == sortedLevel or tlevel == revsortedLevel:
            skip = False
            for i in range(1, len(tlevel)):
                diff = 0
                diff = abs(tlevel[i-1] - tlevel[i])
                if diff < 1 or diff > 3:
                    skip = True
                pass
            if not skip:
                safes += 1
                run = False
            pass
        c += 1
        if c == len(level): run = False
        else:
            tlevel = level.copy()
            tlevel.pop(c)
            pass
        pass
    pass

        


print(safes)
