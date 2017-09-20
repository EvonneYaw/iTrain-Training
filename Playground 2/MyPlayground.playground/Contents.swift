//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1) let vs var
//     *let is used to declare a constant
//     *var is used to declare a variable

//     *the value of let cannot be chaanged
//     *while the value of var can be changed later

//let name = "Evonne"

var surname = "Yo!"

print(surname)

surname = "I AM EVONNE YAW"

print(surname)


//2) Implicit vs Explicit Typing

let macPrice: Double = 1999
let deliveryCharge = 99.99

let totalPrice = macPrice + deliveryCharge

//With implicit typing, Swift guess the data type based on the initial value
//If we want to force type it, we have to explicity mentioned it during declaration
//Swift is a safe-type language, so only operation from same type is allowed.


//3) IF else

let motivatedMsg = "Congratulation you are motivated"
let motivationMsg = "Don't give up easily. This is only the first day"

let motivated = true
//let motivated = false

if motivated == true && surname == "Evonne YAW"{
    print(motivatedMsg)
}
else{
    print(motivationMsg)
    
}


//Note : Semi colon is optional in Swift
//Colon in condition is optional in Swift
//Curly bracket is compulsary if only for line statement


//4) For Loop and Array

var studentsMark = [80,98,76,90,88,72]

studentsMark.append(80)
studentsMark.count
studentsMark[1]

var count = 0

//i)
for mark in studentsMark {
    //1)
        //print(student)
    //2)
    
        //print("student \(count)")
        //count += 1
    
    //3)
        print("student \(count) is \(mark)")
        count += 1
}

//ii)
for i in 0..<studentsMark.count {
    print("student \(i) is \(studentsMark[i])")
}

//Note:
//dot dot is until
//print("student \(count) is \(student)")
//the \ sign is actually means "+"
//for e.g : var surname = "Evonne"
//Java Script : print ("Hello" + surname)
//but for swift print ("Hello \(surname) is \(surname)


//5) Dictionary and Optional

var myInfo = ["name": "Evonne",
    "company" : "iTrain Asia",
    "phone" : "0127878999",
    "email" : "evonne@gmail.com"]

var momInfo = ["name": "Siti"]

//print(myInfo["name"])

//Note:
//Optional Data Type
//An optional is a data type that can be a normal Data Type or nil
let testing = "123"
let testing2 = Int(testing)

let testing3 = "Hello World"
let testing4 = Int(testing3)



//i) Optional Binding
//use if else statement to check whether the value exist or not

if let name = myInfo["name"] {
    print(name)
}

if let name2 = Int(testing) {
    print(name2)
}

if let name3 = Int(testing3) {
    print(name3)
}


//ii) Force Unrap

print(myInfo["name"]!)
print(momInfo["name"]!)
print(Int(testing))
print(Int(testing)!)
print(Int(testing3))
print(testing)

//fatal error : cannot unwrap "nil"
//print(Int(testing3)!)

//Negative Testing
//print(momInfo["email"])
//print(momInfo["email"]!)

//Note : Differences between Optional Binding and Force Unwrap
//Ans: The Quotation Mark




//e.g: force unwrap string
//let myMessage : String? = "Hello World"
let myMessage : String? = "Hello World"
let forceMessage = myMessage
print(forceMessage)
let forceMessage2 = myMessage!
print(forceMessage2)


//

let names = [String]()
names.append("Amy")
names.append("clara")
names.append("rory")
