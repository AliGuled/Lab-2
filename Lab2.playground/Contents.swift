import UIKit

var str = "Hello, playground"


//*****Part A: Bus Fare Calculator, variables, math and string interpolation

//Constants of prices and bus rides
let regularFare: Float = 2.50 //The price of regular fare
let rushFare: Float = 3.25 //The price of rush hour fare
let numberOfTimesDuringRegular: Int = 4 //The number of times during regular rides
let numberOfTimesDuringRush: Int = 8 //The number of times during rush hour





//Calculating the total cost of bus rides
let totalSpentRegularFare: Float = regularFare * Float(numberOfTimesDuringRegular)
let totalspentRushFare: Float = rushFare * Float(numberOfTimesDuringRush)
let totalSpentOnAllRides: Float = totalSpentRegularFare + totalspentRushFare


//Printing formated to dollar amount of calculated output of bus fares
let formatedTotalSpetRegulareFare = String(format: "%.2f", totalSpentRegularFare)
print("Total spent on regualr bus rides is $\(formatedTotalSpetRegulareFare)")

let formatedTotalSpentRushFare = String(format: "%.2f", totalspentRushFare)
print("Total spent on rush hour fare is $\(formatedTotalSpentRushFare)")

let formatedTotalSpentOnAllRides = String(format: "%.2f", totalSpentOnAllRides)
print("Total spent on all rides is $\(formatedTotalSpentOnAllRides)")



//Calculating the cost of regulare fare, using a funtion
func costOfRegularFare(rides: Float) -> Float{
    return regularFare * rides
}
//Calling the funtion and providing the number of rides
let costRegularFare = costOfRegularFare(rides: 4)

//Printing formated total cost of regular bus fare rides
let formatedCostRegulareFare = String(format:"%.2f", costRegularFare)
print("Total spent on regulare bus fare $\(formatedCostRegulareFare)")



//Calculating the cost of rush hour fare, using a funtion
func costOfRushFare(rides: Float) -> Float {
    return rushFare * rides
}
let costRushFare = costOfRushFare(rides: 8)

//Printing formated total cost of cost rush fare
let formatedCostRushFare = String(format: "%.2f", costRushFare)

print("Total spent on rush hour fares is $\(formatedCostRushFare)")



//Calculating the cost of total bus rides, using a funtion
func totalCostBusRides(regulare: Float, rush: Float) -> Float{
    return regulare + rush
}

//Calling the funtion and providing the number of rides and print the result
let costTotalBusRides = totalCostBusRides(regulare: costRegularFare, rush: costRushFare)

let formatedCostTotalBusRides = String(format: "%.2f", costTotalBusRides)
print("Total bus rides is $\(formatedCostTotalBusRides)")

print()//space between my outputs

//An array that stores the names of ITEC classes



//*****Part B: ITEC Class Names - Arrays, Loops, Dictionaries and if-statements
var namesOfItecClasses = ["Programming Logic and Design",
                          "Apple Mobile",
                          "Web Client and Server Programming"]

//Adding another ITEC class to the array
namesOfItecClasses += ["C# Programming"]
print(namesOfItecClasses)
print("Number of classes: \(namesOfItecClasses.count)")

print()//space between my outputs

//Filtering classes with 20 characters long
var maxNumberOfCharacters = namesOfItecClasses.filter({$0.count > 20})
print("Class names with 20 characters long: \(maxNumberOfCharacters)")

print()//space between my outputs

//Creating dictionary where the elements have 20 characters long and warning classes with 20 characters long
for (index, classes) in namesOfItecClasses.enumerated(){
    print("Index:\(index):\tClass:\(classes), Lenght:\(classes.count) characters")
    
    if classes.count > 20 {
        print("Warning: class name must be less than 20 characters.\n")
    } else{
        print("Okay: class name is under 20 characters\n")
    }
}


//*****Part C: More ITEC Classes
//Creating an array of more ITEC classes
var moreITECClasses = ["itec", "BTEc", "maTh"]
//Mapping the array as uppercased letters
var properUpperCased = moreITECClasses.map({$0.uppercased()})
print(properUpperCased)



//looping all of the departments with closed range operator to print all departments
for departs in 0..<properUpperCased.count{
    
    let allClasses = properUpperCased[departs]
    print(allClasses)
}
//Adding more classes to the array and printing
properUpperCased.append("BIO")
print("Departments: \(properUpperCased)")



func challange1(input: String) -> Bool {
    
    return Set(input).count == input.count
}


