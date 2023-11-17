import random 

user_wins = 0
comp_wins = 0

options = ["rock", "paper", "scissors"]

while True:
    user_input = input("type rock, paper, or scissors or q to quit: ").lower()
    if user_input == "q":
        break
    if user_input not in options:
        continue 
    rand_num = random.randint(0,2)
    # rock = 0, paper = 1, scissors = 2
    comp_pick = options[rand_num]
    print("Computer picked ", comp_pick + ".")

    if user_input == "rock" and comp_pick == "scissors":
        print("Win")
        user_wins += 1
        
    elif user_input == "paper" and comp_pick == "rock":
        print("Win")
        user_wins += 1
        
    elif user_input == "rock" and comp_pick == "paper":
        print("Win")
        user_wins += 1

    elif user_input == comp_pick:
        print("tie")

    else:
        print("loser")
        comp_wins += 1

print("You won ", user_wins, " times")
print("Computer won ", comp_wins, " times")
print("Bye")




