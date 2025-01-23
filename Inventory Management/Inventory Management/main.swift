//
//  main.swift
//  Inventory Management
//
//  Created by StudentPM on 1/9/25.
//

import Foundation

//Store the amount of items in the cart
var milksInTheCart: Int = 0
var cerealsInTheCart: Int = 0
var syrupsInTheCart: Int = 0
var cupsInTheCarts: Int = 0

var num: Int = 0 // when the number between 1 and 5 is store
var currentTotal: Double = 0.0 //Te total before taxes and before add other items
var taxRate: Double = 0.0925 //Amount of taxes
var adminID: String = "2438" // Admin pasword

//The price of the items
var cerealPrice: Double = 4.99
var milkPrice: Double = 4.99
var syrupPrice: Double = 3.99
var cupsPrice: Double = 2.99

//The amount of items in stock
var cerealInventory: Int = 100
var milkInventory: Int = 100
var syrupInventory: Int = 100
var cupsInventory: Int = 100

//The total of each item
var cerealTotal: Double = 0.0
var milkTotal: Double = 0.0
var syrupTotal: Double = 0.0
var cupTotal: Double = 0.0

var adminChoice: Int = 0
let subtotal: Double = 0.0 //The total before taxes

normalMenu() //call the function to star the code

//A function to stor the main menu
func normalMenu() {
    //While loop to when the number is not equal or iqual 5 the code do not run.
    while num != 5 {
        print(num)
        
        //Print the welcome to the store
        print("Welcome to the grocery store! Lets us know how we can help you (Enter number of selection): ")
        //print the options that you can choose.
        print("1. Add item to cart")
        print("2. Remove item for cart")
        print("3. Check if item is in stock")
        print("4. Admin Menu")
        print("5. Checkout")
        
        //If the user write one of the following numbers run the function inside it.
        if let userInput = readLine(), let inputNum = Int(userInput){
            num = inputNum //store num inside the inputNum
            
            //If num is equal one run addItemToCart function
            if num == 1{
                addItemToCart()
            }
            else if num == 2{ //If num is equal one run removeItemForCart function
                removeItemForCart()
            }
            else if num == 3{//If num is equal one run checkIfItemIsInStock function
                checkIfItemIsInStock()
            }
            else if num == 4{//If num is equal one run adminMenu function
                adminMenu()
            }
            else if num == 5{//If num is equal one run checkout function
                checkout()
            }
        }
        
    }
}

//Function to add items to the cart.
func addItemToCart(){
    
    //print the following menu
    print("What would you like to add to cart? (Enter number of selection)")
    print("1.Cereal")
    print("2.Milk")
    print("3.Syrup")
    print("4.Cups")
    
    //If the user write a number between one and five write the stanment depends of the number
    if let userInput = readLine(), let itemsNum = Int(userInput) {
        num = itemsNum // store num inside of itemNum
       
        //If item num is equal 1 run the folowing code
        if itemsNum == 1{
            print("How many cereal(s) would you like to add to your cart?")//Print this question just if the item num is equal one
            //If the user select a quantiti store it inside of userchoise. and also it is create a quantity let.
            if let userChoice = readLine(), let quantity = Int(userChoice){
                cerealsInTheCart += quantity //Sum the amount of cereal in the cart plus the quantity that is the number tha the user enter.
                cerealTotal += Double(quantity) * cerealPrice //The total of cereals in the cart is quantity(the number that user enter)*The price of the cereal
                print("You have added \(quantity) cereals to your cart!")//Print this including the quantity (the number that user enter)
            }
        }
        else if itemsNum == 2 { //If item num is equal 2 run the folowing code and make exactly the same that in the first if statement.
            print ("How many milk(s) would you like to add to your cart?")
            if let userChoice = readLine(), let quantity = Int(userChoice){
                milksInTheCart += quantity
                milkTotal += Double(quantity) * milkPrice
                print("You have added \(quantity) milks to your cart!")
            }
        }
        else if itemsNum == 3{//If item num is equal 3 run the folowing code and make exactly the same that in the first if statement.
            print("How many Syrup(s) would you like to add to your cart?")
            if let userChoice = readLine(), let quantity = Int(userChoice){
                syrupsInTheCart += quantity
                syrupTotal += Double(quantity) * syrupPrice
                print("You have added \(quantity) syrups to your cart!")
            }
        }
        else if itemsNum == 4{////If item num is equal 2 run the folowing code and make exactly the same that in the first if statement.
            print("How many cup(s) would you like to add to your cart?")
            if let userChoice = readLine(), let quantity = Int(userChoice){
                cupsInTheCarts += quantity
                cupTotal += Double(quantity) * cupsPrice
                print("You have added \(quantity) cups to your cart!")
            }
        }
        else{//If the user write a number that is not into 1 to 4 print this thing.
            print("Ivalid selection, please try again.")
        }
        
         //sum all the total of the products and store inside of the current total
        currentTotal = cerealTotal + milkTotal + syrupTotal + cupTotal
        //Print the this including the current total
        print("Current total is: $\(currentTotal)")
        
    }
    
}

//Create a function to remove items to the cart.
func  removeItemForCart(){
    //Print the following menu
    print("What would you like to remove from cart? (Enter number of selection):")
    print("1. Cereal")
    print("2. Milk")
    print("3. Syrup")
    print("4. Cups")
    
    //If the user write a number between 1 to 4 write the following code. Also store the itemsNum (the number that user enter) here
    if let userInput = readLine(), let itemsNum = Int(userInput){
        if itemsNum == 1{// If the user write 1 run the folllowing code
            print("How many cereals would you like to remove from your cart? (Enter number of selection):")//print this in the screm
            //store the quantity here. quantity is the same that the number that the user choise.
            if let userChoise = readLine(), let quantity = Int(userChoise){
                if quantity <= cerealsInTheCart{// if the quantity is equal or lest that cereals in the cart run the following
                    
                    cerealsInTheCart -= quantity // cereals in  the cart less the number that the user enter.
                    
                    cerealTotal -= Double(quantity) * cerealPrice //after remove the quantity, the total of sereals the result is less or equal that quantity * the price of the cereal.
                    
                    print("Removed \(quantity) from the cart!")//I fthis fuction run print this in the screm including the actual quantity.
                }
            }
        }
        else if itemsNum == 2{// If the user write 2 run the folllowing code that is exacli the same that the code before but with another product.
            print("How many milk would you like to remove from your cart? (Enter number of selection):")
            if let userChoise = readLine(), let quantity = Int(userChoise){
                if quantity <= milksInTheCart{
                    milksInTheCart -= quantity
                    milkTotal -= Double(quantity) * milkPrice
                    print("Removed \(quantity) from the cart!")
                }
            }
        }
        else if itemsNum == 3{// If the user write 3 run the folllowing code that is exacli the same that the code before but with another product.
            print("How many syrups would you like to remove from your cart? (Enter number of selection):")
            if let userChoise = readLine(), let quantity = Int(userChoise){
                if quantity <= syrupsInTheCart{
                    syrupsInTheCart -= quantity
                    syrupTotal -= Double(quantity) * syrupPrice
                    print("Removed \(quantity) from the cart!")
                }
            }
        }
        else if itemsNum == 4{// If the user write 4 run the folllowing code that is exacli the same that the code before but with another product.
            print("How many cups would you like to remove from your cart? (Enter number of selection):")
            if let userChoise = readLine(), let quantity = Int(userChoise){
                if quantity <= cupsInTheCarts{
                    cupsInTheCarts -= quantity
                    cupTotal -= Double(quantity) * cupsPrice
                    print("Removed \(quantity) from the cart!")
                }
            }
        }
        else{//if the user enter a number that is not into 1 to 4 print this.
            print("Ivalid selection, please try again.")
        }
        
        //Sum all the new total of the products and store in the current total.
        currentTotal = cerealTotal + milkTotal + syrupTotal + cupTotal
        //Print the current total in the screm.
        print("Current total is: $ \(currentTotal)")
        
    }
    
}

//Function to check if a item is in stock
func checkIfItemIsInStock(){
    
    //print the following menu
    print("What item would you like to check if it's in stock? (Enter number of selection)")
    print("1. Cereal")
    print("2. Milk")
    print("3. Syrup")
    print ("4. Cups")
    
    //If the user choose one of the following numbers and it is inside of num run the following code.
    if let userInput = readLine(), let numOfItems = Int(userInput) {
        num = numOfItems // store num inside of numOfItems
        
        if numOfItems == 1{//If the number write one run the following code.
            print("There are currently \(cerealInventory) cereals in stock!")//Print this incliding the amount of cereals in the inventory.
        }
        else if numOfItems == 2{//If the number write 2 run the following code.
            print("There are currently \(milkInventory) milks in stock!")//Print this incliding the amount of milks in the inventory.
        }
        else if numOfItems == 3{//If the number write 3 run the following code.
            print("There are currently \(syrupInventory) syrups in stock!")//Print this incliding the amount of syrups in the inventory.
        }
        else if numOfItems == 4{//If the number write 4 run the following code.
            print("There are currently \(cupsInventory) cups in stock!")//Print this incliding the amount of cups in the inventory.
        }
        else{//If the user write something that is not one of this numbers print this.
            print("This item is not in stock!")
        }
        
    }
}

//Function to go into the admin menu
func adminMenu(){
    print("Enter Admin ID:" )//print this for the admin know that he can put the ID
    
    //If user write a num run this.
    if let userChoice = readLine(){
        
        //if what the admin write the correct ID run this
        if(userChoice == adminID){
            
            //A while loop for make sure that just put a num between 1 to 4
            while adminChoice != 4
            {
                //if the user put the correc ID show this menu.
                print("Welcome to the Admin menu! Lets us know how we can help you (Enter number of selection): ")
                print("1. Restock inventory")
                print("2. Generate report")
                print("3. Check number of items")
                print("4. Quit admin menu")
                
                //If the admin choose one of the following number write the code inside of each one.
                if let userInput = readLine(), let adminIDp = Int(userInput), let adminFunction = Int(userInput){
   
                    adminChoice = adminIDp//What the admin choose.
                    num = adminFunction // where the num that we choose is store
                    
                    //If the admin write 2 go to the generateReport function and run it.
                    if adminFunction == 2{
                           generateReport()
                    }
                    else if adminFunction == 1{//If the admin write 1 go to the restockInventory function and run it. and change the name if adminChoise for choise.
                        restockInventory(choice: adminChoice)
                            
                    }
                    else if adminFunction == 3{//If the admin write 3 go to the CheckNumberOfItems function and run it.
                        CheckNumberOfItems()
                    }
                    else if adminFunction == 4{//If the admin write 4 print this and go to the normalMenu function
                        print("Returning to normal menu")
                        normalMenu()
                    }
                    
                }
            }
        }
        else{//If the option that the admin choose is not here write this.
            print("Code is wrong")
        }
        
       
    }

    
    
    
    
}

//Create a function that go inside of the admin menu to generate a report of the items in the inventory.
func generateReport(){
    //Print this report incuding the amount of each item in the cart.
    print("Summary Report:")
    print("Remaining cereals: \(cerealInventory) items")
    print("Remaining Milks: \(milkInventory) items")
    print("Remaining Syrups: \(syrupInventory) items")
    print("Remaining Cups: \(cupsInventory) items")
    print("Total Sales: \(subtotal)") //Print the total of the products that are already seling.
}

//Create a function that go inside of the admin menu to restock the items in the inventory.
func restockInventory(choice: Int){
    //When the admin choose this option print this menu.
    print("What would you like to restock? (Enter number of selection): ")
    print("1. Cereal")
    print("2. Milk")
    print("3. Syrup")
    print("3. Cups")
    
    //If the admin choose one of the options, dependt of what he choose run the following codes.
    if let unitsRestock = readLine(),let unitsRestock = Int(unitsRestock){
        //If the admin choose one print this to the screm.
        if unitsRestock == 1{
            print("How many units of cereals would you like to restock?:")
        }
        else if unitsRestock == 2{//If the admin choose 2 print this to the screm.
            print("How many units of Milks would you like to restock?:")
        }
        else if unitsRestock == 3{//If the admin choose 3 print this to the screm.
            print("How many units of Syrups would you like to restock?:")
        }
        else if unitsRestock == 4{//If the admin choose 4 print this to the screm.
            print("How many units of Cups would you like to restock?:")
        }
    }
    
    //depents of what the user choose in the previus option and the units that he decide to restocke run this
    if let restockItem = readLine(),let restockItem = Int(restockItem){
        //if the user choose 1 run this
        if choice == 1{
            
            cerealInventory += restockItem//Sum the number the cereals in the inventory + or = the number of items tha the admin write to restocke
            print("Restocked \(restockItem) units of Cereal")//Also print this including the number the items that the admin going to restock.
        }
        else if choice == 2{//if the user choose 2 run this
            
            milkInventory += restockItem //Sum the number the milks in the inventory + or = the number of items tha the admin write to restocke
            print("Restocked \(restockItem) units of Milk")//Also print this including the number the items that the admin going to restock.
        }
        else if choice == 3{//if the user choose 3 run this
            
            syrupInventory += restockItem //Sum the number the syrups in the inventory + or = the number of items tha the admin write to restocke
            print("Restocked \(restockItem) units of Syrup")//Also print this including the number the items that the admin going to restock.
        }
        else if choice == 4{//if the user choose 4 run this
            cupsInventory += restockItem //Sum the number the cups in the inventory + or = the number of items tha the admin write to restocke
            print("Restocked \(restockItem) units of Cups")//Also print this including the number the items that the admin going to restock.
        }

    }
}

//Create a function that go inside of the admin menu tha if for check the number of thr units of a produnt
func CheckNumberOfItems(){
    
    //If the admin choose this option print the following menu
    print("What item would you like to check if it's in stock? (Enter number of selection)")
    print("1. Cereal")
    print("2. Milk")
    print("3. Syrup")
    print("4. Cups")
   
    //Dependt of what number the user write print the following options
    if let checkNum = readLine(), let checkNum = Int(checkNum){
        //If the user choose une print this including the number of cereals in the inventori.
        if checkNum == 1{
            print("There are currently \(cerealInventory) cereals in stock!")        }
        else if checkNum == 2{//If the user choose 2 print this including the number of milks in the inventori.
            print("There are currently \(milkInventory) milks in stock!")
        }
        else if checkNum == 3{//If the user choose 3 print this including the number of syrups in the inventori.
            print("There are currently \(syrupInventory) syrups in stock!")
        }
        else if checkNum == 4{//If the user choose 4 print this including the number of cups in the inventori.
            print("There are currently \(cupsInventory) cups in stock!")
        }
    }
}

//Create a function to checkout
func checkout(){
    //Sum the totsl of each product and store in the subtotal
    let subtotal = cerealTotal + milkTotal + syrupTotal + cupTotal
    let taxAmount = subtotal * taxRate // Multiplicar the subtotal and the taxRate
    let grandTotal = subtotal + taxAmount // store the total including the taxes.
    
    //if the user choose this option run the following menu
    print("Thanks for shopping with us!")
    print("You purchases the following:")
    print("Cereal(s): \(cerealsInTheCart)")//print the number of cereals in the cart.
    print("Milk(s): \(milksInTheCart)")//print the number of milks in the cart.
    print("Syrup(s): \(syrupsInTheCart)")//print the number of syrups in the cart.
    print("Cup(s): \(cupsInTheCarts)")//print the number of cups in the cart.
    print("Your grand total including tax (9.25%) is: \(grandTotal)")//prit the grnd total.
    
}

