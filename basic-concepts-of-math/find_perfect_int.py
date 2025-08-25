def is_perfect(divisors, n):
    count = 0
    for i in divisors:
        count = count + i
    if count == n:
        return True
    return False


def main():
    print("hi")
    current = 80000 
    divisors = [1]
    while not is_perfect(divisors, current):
        current = current + 1
        divisors = [1]
        i = 2
        while True:
            if i >= current-1:
                break
            remainder = ((current / i) == (current // i))
            if remainder == True:
                divisors.append(i)
            i += 1
    print(current)


main()
