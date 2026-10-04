from datetime import date

# Constructs our transactions with date, description, category, and amount; organizing into expense or income
class Transaction:
    def __init__(self, d="", description="", amount=1.00, category=""):
        # Declare variables
        self.date = d
        self.description = description
        self.category = category
        # Error check if amount is 0
        if amount == 0:
            raise ValueError("Amount cannot be zero")
        elif amount > 0:
            self.income = True
        elif amount < 0:
            self.income = False

        self.amount = float(amount)

    # Prints the attributes of our transaction
    def to_string(self):
        text = f"{self.date} | {self.description} | {self.amount} | {self.category}"
        return text

    # Returns whether our transaction is income or an expense
    def get_income(self):
        return self.income

# Finds and organizes data about our transactions within categories
class Category:
    def __init__(self, name=""):
        # declare variables
        self.name = name
        self.transactions = []  # list of transactions for category

    # Adds a transaction to data
    def add_transaction(self, tx):
        self.transactions.append(tx)  # add transaction

    # Finds total sum of a category
    def total(self):
        total_sum = 0
        for item in self.transactions:
            total_sum += item.amount  # sum total transactions
        return total_sum

    # Finds whether a transaction is an expense, and sums expenses
    def expense_total(self):
        total_expense = 0
        for item in self.transactions:
            if not item.income:  # if amount < 0 = income = false
                total_expense += abs(item.amount)  # sum expenses
        return abs(total_expense)

    # Finds whether a transaction is income, and sums income sources.
    def income_total(self):
        total_income = 0
        for item in self.transactions:
            if item.income:  # if amount > 0 = income = true
                total_income += item.amount  # sum income
        return total_income

    # Prints a categories information, the amount of transactions within, and the net change
    def to_string(self):  # string
        return(f"{self.name}: {len(self.transactions)} tx | Spent {self.expense_total()} | Net {self.total()}")


class BudgetBook:
    def __init__(self):
        # Declares our variables
        self.budgetDict = {}

    # Adds new transaction to our dictionary, checking for category uniqueness
    def add_transactions(self, d, desc, amount, category_name):
        tx = Transaction(d, desc, amount, category_name)
        # Checks if category exists, if it exists it adds the new item
        for key in self.budgetDict:
            if key == category_name:
                self.budgetDict[category_name].add_transaction(tx)  # Add transaction to dictionary for category
        self.budgetDict[category_name] = Category(category_name)  # Auto gen category if it doesn't exist
        self.budgetDict[category_name].add_transaction(tx)  # Add transaction to dictionary for category
        print("Transactions added.")

    def remove_transactions(self, index):
        count = 0  # Match index of dict with index user requested
        for key in self.budgetDict:
            # Checks if index exists
            if count == index:
                del self.budgetDict[key]  # Deletes key
                print("Transaction removed.")
            count += 1
        print("Error: Category not found")  # Error message for when a key is not found at that index

    def list_transactions(self):
        count = 0  # Find spot in numbered list
        for cat in self.budgetDict.values():  # Iterates through categories
            for tx in cat.transactions:  # Iterates through transactions
                print(f"[{count}] {tx.to_string()}")  # Prints string with corresponding number
                count += 1

    def list_categories(self):
        for cat in self.budgetDict.values():
            print(cat.to_string())  # Prints summary of categories and transactions

    def search(self, keyword):
        count = 0  # find spot in numbered list
        for cat in self.budgetDict.values():  # Iterates through categories
            for tx in cat.transactions:  # Iterates through transactions
                if keyword.lower() in tx.description.lower():
                    print(f"[{count}] {tx.to_string()}")
                count += 1

    def monthly_report(self, year, month):
        minimum = 0
        income = 0
        expense = 0
        total = 0
        title = ""
        description = ""
        for cat in self.budgetDict.values():  # Iterates through categories
            for tx in cat.transactions:  # Iterates through transactions
                if minimum > tx.amount:  # Finds largest expense
                    minimum = tx.amount  # Sets as new maximum
                    title = cat.name # Labels the title as category
                    description = tx.description # Labels description from transaction data
                if int(tx.date[5:7]) == month: # Compares char 5-7 (YYYY-**MM**-DD) to current month
                    income += cat.income_total()
                    expense += cat.expense_total()
                    total += cat.total()
        print(f"Income: {income}")
        print(f"Expense {expense}")
        print(f"Net {total}")

        print(f"Largest expense: {description} ({minimum})")
        print(f"Top spending category: {title} ({abs(minimum)})")


def main():
    transactions = [] # Initializes array for transactions
    transCount = 0 # Counts transactions
    book = BudgetBook() # Connects book to main

    # Only initialize variables above once, below is a forever loop broken by exiting
    while True:
        # Menu
        print("--- Budget Tracker ---")
        print("1. Add transaction")
        print("2. List all transactions")
        print("3. List categories summary")
        print("4. Remove a transaction")
        print("5. Search transactions by keyword")
        print("6. Monthly report")
        print("7. Exit ")

        # Loops til value is set
        while True:
            try:
                choice = int(input("Choice: "))
                if 1 <= choice <= 7:
                    break
            except ValueError:
                print("Choice must be an integer between 1 and 7.")

        # Grabs data and passes to tx
        if choice == 1:
            while True:
                d = input("Date (YYYY-MM-DD): ")
                if len(d) != 10:
                    print("Format must be in YYYY-MM-DD.")
                else:
                    break
            description = input("Description: ")
            while True:
                try:
                    amount = float(input("Amount (negative=expense, positive=income): "))
                    break
                except ValueError:
                    print("Error: Amount must be a number.")
            category = input("Category: ")
            transCount += 1

            tx = book.add_transactions(d, description, amount, category)
            transactions.append(tx)
        elif choice == 2:
            # Lists all transactions
            book.list_transactions()
        elif choice == 3:
            # Lists all categories
            book.list_categories()
        elif choice == 4:
            # Removes transactions
            index = input("Enter transactions index to remove: ")
            book.remove_transactions(index)
        elif choice == 5:
            # Searches transactions via keyword in book data
            ui = input("Enter keyword: ")
            book.search(ui)
        elif choice == 6:
            # Generates a monthly report based on data inputted
            year = int(input("Year: "))
            mon = int(input("Month (1-12): "))
            book.monthly_report(year, mon)
        elif choice == 7:
            print("Exiting...")
            exit()


if __name__ == "__main__":
    main()
