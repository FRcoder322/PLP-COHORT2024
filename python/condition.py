def calculate_discount(price, discount_percent):
    if discount_percent >= 20:
        discounted_price = price - (price * (discount_percent / 100))
        return discounted_price
    else:
        return price

def main():
    price = float(input("Enter the original price of the item: $"))
    discount_percent = float(input("Enter the discount percentage: "))

    final_price = calculate_discount(price, discount_percent)

    if final_price != price:
        print(f"The final price after applying a {discount_percent}% discount is: ${final_price:.2f}")
    else:
        print("No discount applied. The original price remains: ${:.2f}".format(price))

if __name__ == "__main__":
    main()
