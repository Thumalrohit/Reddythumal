while True:
    p1 = input("Player 1: rock/paper/scissors? ").lower()
    p2 = input("Player 2: rock/paper/scissors? ").lower()
    if p1 == p2:
        print("It's a tie!")
    elif (p1 == "rock" and p2 == "scissors") or \
         (p1 == "paper" and p2 == "rock") or \
         (p1 == "scissors" and p2 == "paper"):
        print("Player 1 wins!")
    else:
        print("Player 2 wins!")
    again = input("Play again? (yes/no): ").lower()
    if again != "yes":
        break



