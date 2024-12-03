file = open("input.txt")

safes = 0

for line in file:
    level = list(map(int, line.split(" ")))
    sortedLevel = level.copy()
    sortedLevel.sort()
    revsortedLevel = level.copy()
    revsortedLevel.sort(reverse=True)
    if level == sortedLevel or level == revsortedLevel:
        skip = False
        for i in range(1, len(level)):
            diff = 0
            diff = abs(level[i-1] - level[i])
            if diff < 1 or diff > 3:
                skip = True
                pass
            pass
        if skip: continue
        safes += 1
        pass
    pass


print(safes)
