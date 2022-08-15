import random

cpu_score = 0
user_score = 0
rounds = 0

while True:
    gestures = ['rock', 'paper', 'scissors']
    while True:
        user_gesture = input("rock, paper, scissors?\n")
        if user_gesture not in gestures:
            continue
        else:
            break

    cpu_gesture = random.choice(gestures)
    print(f"\nYou chose {user_gesture}, computer chose {cpu_gesture}.\n")

    if user_gesture == cpu_gesture:
        rounds += 1
        print(f"Both players selected {user_gesture}. It's a tie")
    elif user_gesture == 'rock':
        if cpu_gesture == 'scissors':
            rounds += 1
            user_score += 1
            print("Rock smashes scissors! You win.")
        else:
            rounds += 1
            cpu_score += 1
            print("Paper covers rock! You lose.")
    elif user_gesture == "paper":
        if cpu_gesture == 'rock':
            rounds += 1
            user_score += 1
            print("Paper covers rock! You win.")
        else:
            rounds += 1
            cpu_score += 1
            print("Scissors cut paper! You lose.")
    elif user_gesture == 'scissors':
        if cpu_gesture == 'paper':
            rounds += 1
            user_score += 1
            print("Scissors cuts paper! You win")
        else:
            rounds += 1
            cpu_score += 1
            print("Rock smashes scissors! You lose.")

    print(f"\nYou: {user_score} | Computer: {cpu_score}")

    play_again = input("Would you like to play again? (y/n):\n")

    if play_again == 'n':
        break
    else:
        continue


if user_score > cpu_score:
    print(f"\nYou won {user_score} rounds against {cpu_score} out of {rounds} rounds.\nCONGRATULATIONS! YOU'RE THE WINNER")
elif user_score < cpu_score:
    print(f"\nThe computer won {cpu_score} rounds against {user_score} out of {rounds} rounds.\nSORRY, YOU LOSE.")
else:
    print(f"\nIt's a tie! Both scored {user_score} rounds out of {rounds} rounds.")