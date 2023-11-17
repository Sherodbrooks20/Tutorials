print("Welcome to me quiz game")

playing = input("Do you want to play: ")

if playing.lower() != "yes":
    quit()
print("Okay, let's play: ")
score = 0
answer = input("What NBA team plays in Philadelphia: ")
if answer.lower() == "76ers":
    print("Correct")
    score += 1
else:
    print("Incorrect")

answer = input("Who's the best player of all time: ")
if answer.lower() == "Michael Jordan":
    print("Correct")
    score += 1
else:
    print("Incorrect")

answer = input("What team won the NBA Championship in 1984: ")
if answer.lower() == "Boston Celtics":
    print("Correct")
    score += 1
else:
    print("Incorrect")

answer = input("What NBA team drafted Bill Walton: ")
if answer.lower() == "Portland Trailblazers":
    print("Correct")
    score += 1
else:
    print("Incorrect")

answer = input("Who holds the record for the most points in a NBA finals game: ")
if answer == "Elgin Baylor":
    print("Correct")
    score += 1
else:
    print("Incorrect")

print("you got" + str(score) + "right")
print("you got " + str(score/5 *100) + "%")







