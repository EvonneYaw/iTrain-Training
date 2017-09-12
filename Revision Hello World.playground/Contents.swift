//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Create a new variable
//Put value "Hello World"
//Print the value

var myString = "Hello World"

print(myString)

//Create a new variable of Type String (Implicit/Explicit Typing)
//Don't assign any value
//Print the value and see what will happen

var myString2 : String?
print(myString2)


//String, number, array and dictionary, float itself cannot be nil
//To declare it to accept nil value, we will declare as Optional String



//Assign myString2 to "Goodbye world"
//Retrieve the value..

myString2 = "Goodbye World"
print(myString2)



//Force Unwrap

print(myString2!)

//Optional Binding

if let myString3 = myString2 {
    print(myString3)

}


//Mathematics

let a = 5
let b = 12

//+
let sum = a + b
//-
let minus = a - b
//division
let division = a/b

//*
let multipication = a * b

//%
let modulo = a % b

let c = 10.0
//let divisionPoint = c/b  //Error due to c has d.p but b does not have d.p
//so to make it same format, put "Double" to make b has same d.p like c
let divisionPoint = c/Double(b)

let divisionTransform = Double(a/b)
print(divisionTransform)
let transformC = Int(divisionTransform)
print(transformC)



//Array

//Create an array with all the even number between 1-10
//let myString4 = [ 2, 6, 8, 10]  ==> Error encountered for append
var myString4 = [ 2, 6, 8, 10]


//Call the three important methods of an array
myString4.append(12)
myString4.count
print(myString4[2])

//Create two for loops to iterate all the values in the array
for number in myString4 {
    print(number)
}


for i in 0..<myString4.count{
    print("number\(i) is \(myString4[i])")
}


//Dictionary

//Create a dictionary mapping country code and country, for exmaple: My - Malaysia

//var myCountryInfo = ["country"= "Malaysia",
//                    "countrycode" = "MY"]
//Error due to "=" inside the [], should be ":"

var myCountryInfo = ["country": "Malaysia",
                    "countrycode": "MY"]
//another example
var countryDict = [ "MY":"Malaysia",
                    "SGP":"Singapore",
                    "VN": "Vietnam"]

//Retrieve the value of MY from the dictionary

print(myCountryInfo["country"])
//==>Force Unwrap
print(myCountryInfo["country"]!)


print(countryDict["MY"])
print(countryDict["MY"]!)

//array string
var arrayString : [String?]?
print(arrayString)






