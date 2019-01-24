import UIKit
// string variable
var str = "Hello, playground"

//Part 1: Chapter 2, the Swift Language - Examples of the book.

var nextYear: Int = 2020 // integer variable
var bodyTemp: Float = 96.0 //floating point variable
var hasPet: Bool = true //boolean variable
var arrayOfInts: [Int] = [1,2,3,4,5] //an array of integers variable

//Creating dictionary variable
var dictionaryOfCapitalByCountry: [String:String] = ["GB": "Great Britain", "USA": "United Stated of America"]
// WinningLotterNumber Set variable
var winningLotterNumber: Set<Int> = [1,2,3,6,8]

//inferred typed constants
let number = 42
let fmStation = 91.1


var countingUp = ["one","two"] //An arrary variable
//let nameByParkingSpace = [13:"Alice", 27:"Bob"]
let index = 1
let secondElement = countingUp[index]

//Decalring empty constants
let emptyString = String()
let empptyArrayOfInts = [Int]()
let emptyOfFloats = Set<Float>()

//Decalring empty constants
let defaultNumber = Int()
let defaultBool = Bool()
//Decalring empty constants
let number2 = 42
let meaningOfLife = String(number)

//Decalring empty constants
let availabeRooms = Set([205,411,412])
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPi = 3.14

/// This is an **awesome** documentation line for a really *useful* variable.
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

countingUp.count
countingUp.append("three")

var anOPtinalFloat: Float?
var anOptinalArrayOfString: [String]?
var anOptinalArrayOfOptionalString: [String?]?


//Optional varibles
var reading1:Float?
var reading2:Float?
var reading3:Float?

//Asigning values to optionals
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7



//let avgReading = (reading1! + reading2! + reading3!) / 3

//unwraping optinal valus using if let statements
if let r1 = reading1{
    if let r2 = reading2{
        if let r3 = reading3{
            let avgReading = (r1 + r2 + r3) / 3
            avgReading
            
        }
    } else{
        let errorString = "Instrument reported a reading that was nil"
        errorString
    }
}


//dictionary variables
let nameByParkingSpace = [13:"Alice", 27:"Bob"]
let space13Assignee:String? = nameByParkingSpace[13]
let space42Assignee = nameByParkingSpace[42]

//let range = 0..<countingUp.count
for i in 0..<countingUp.count {
    let string = countingUp[i]
    print(string)
    
}

//looping in a dictionary and printing
for (space, name ) in nameByParkingSpace{
    let permit = "Space \(space): \(name)"
    print(permit)
}

//declaring enumeration
enum PieType {
    case apple
    case cherry
    case pecan
    case notMyFavorite
}
var favoritePie = PieType.cherry


//Switch statements on enums
var name: String = ""
switch favoritePie {
case .apple:
    name = "Apple"
    print(name)
case .cherry:
    name = "Cherry"
    print(name)
case .pecan:
    name = "Pecan"
    print(name)
default:
    print("Not my favoritePie")
}

//Switching on integer value
let macOSVersion: Int = 10
switch macOSVersion {
case 0...8:
    print("A big cat")
case 9:
    print("Mavericks")
case 10:
    print("Yosemite")
case 11:
    print("El Capitan")
case 12:
    print("Sierra")
case 13:
    print("High Sierra")
case 14:
    print("Mojava")
default:
    print("Greetings, people of the future! what's new in 10 \(macOSVersion)?")
}

//declaring enumeration
enum pieType: Int{
case apple = 0
case cherry
case pecan
}

//Accessing enum in it's rawValue
let pieRawValvue = pieType.pecan.rawValue
print(pieRawValvue)

if let pieType = pieType(rawValue: pieRawValvue){
    print(pieType)
}
print()

// Part A
//Constants of prices and bus rides
let regularFare: Float = 2.50 //The price of regular fare
let rushFare: Float = 3.25 //The price of rush hour fare
let numberOfTimesDuringRegular: Int = 4 //The number of times during regular rides
let numberOfTimesDuringRush: Int = 8 //The number of times during rush hour


//Calculating the total cost of bus rides
let totalSpentRegularFare: Float = regularFare * Float(numberOfTimesDuringRegular)
let totalspentRushFare: Float = rushFare * Float(numberOfTimesDuringRush)
let totalSpentOnAllRides: Float = totalSpentRegularFare + totalspentRushFare


//Printing out the calculated output of bus fares
print("Total spent on regualr bus rides is $\(totalSpentRegularFare)")
print("Total spent on rush hour fare is $\(totalspentRushFare)")
print("Total spent on all rides is $\(totalSpentOnAllRides)")



//Calculating the cost of regulare fare, using a funtion
func costOfRegularFare(rides: Float) -> Float{
    return regularFare * rides
}
//Calling the funtion and providing the number of rides
let costRegularFare = costOfRegularFare(rides: 4)

//Printing total cost of regular bus fare rides
print("Total spent on regulare bus rides is $\(costRegularFare)")



//Calculating the cost of rush hour fare, using a funtion
func costOfRushFare(rides: Float) -> Float {
    return rushFare * rides
}
let costRushFare = costOfRushFare(rides: 8)
print("Total spent on rush hour fares is $\(costRushFare)")



//Calculating the cost of total bus rides, using a funtion
func totalCostBusRides(regulare: Float, rush: Float) -> Float{
    return regulare + rush
}

//Calling the funtion and providing the number of rides and print the result
let costTotalBusRides = totalCostBusRides(regulare: costRegularFare, rush: costRushFare)
print("Total bus rides is $\(costTotalBusRides)")

print()//space between my outputs

//An array that stores the names of ITEC classes
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


//Part C
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



