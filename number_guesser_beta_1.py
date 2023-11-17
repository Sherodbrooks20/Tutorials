import random

#x = random.randrange(-5,25)
#print(x)

top_range = input("Enter a number: ")

if top_range.isdigit():
    top_range = int(top_range)

    if top_range <= 0:
        print("Enter a number above 0 ")
        quit()
else:
    print("Enter a valid number ")
    quit()


rand_num = random.randint(0, top_range)
#print(rand_num)
guesses = 0

while True:
    guesses += 1
    user_guess = input("Guess a number: ")
    if user_guess.isdigit():
        user_guess = int(user_guess)
    else:
        print("Enter a valid number ")
        continue
    
    if user_guess == rand_num:
        print("correct")
        break
    elif user_guess > rand_num:
        print("Too high")
    
    else:
        print("Too low")

print("It took" + str(guesses) + "guesses")


