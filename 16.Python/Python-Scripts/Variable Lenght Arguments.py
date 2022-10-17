# Variable Length Arguments *args (Non keyword Arguments)
def order_food(min_order, *args):
    print(f"You have ordered: {min_order}")
#    print(args)
    for item in args:
        print(f"You have ordered: {item}")
    print("Your food will be delivered in 30 mins:")
    print("Enjoy the party")

order_food("Salad", "Pizza", "Biryani", "Soup")

