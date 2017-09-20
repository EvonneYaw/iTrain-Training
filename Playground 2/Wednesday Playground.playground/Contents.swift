//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Create a new class is call TaxCalculator
//taxAmount, taxPct and total


class TaxCalculator : NSObject {
    
    var taxAmount : Double
    var taxPct : Double
    var total : Double
 
    
//Create the intializer of the class
    init(taxPct: Double, total: Double)
    {
        //self.taxAmount = taxAmount
        self.taxAmount = total * taxPct
        self.taxPct = taxPct
        self.total = total
    }
    
//Create a method that is call printTaxAmount.
//This method will print taxAmount
//e.g: print(taxAmount)

//Return Type
//Void means a function return nothing
//Int means a function return something
    func printTaxAmount() -> Void {
         print(taxAmount)
    }
    
//Create a method that is called calculateTaxForNewPct
//This method will take newPct as parameter
//This method will return nexPct * total
    
    
//  func calculateTaxForNewPct (newPct: Double) -> Int {
    func calculateTaxForNewPct (newPct: Double) -> Double {
        return newPct * total
    }
    
//Create a method that is called calculateTaxForNewPctAndAmount
//This method will take newPct and newAmount as parameters
//This method will return newAmount * newPct
    
    func calculateTaxForNewPctAndAmount(newPct: Double,  newAmount: Double) -> Double {
        return newPct * newAmount
    }
    
//Create a method that is called calculateTaxAndAmountFor
//This method will take newPct, newAmount and personName as parameter
//This method will print "Tax for mr/ms <<personName>> is <<newPct * newAmount>>"
   
    func calculateTaxAndAmountFor(newPct: Double, newAmount: Double, personName: String ) -> Void {
        print("Tax for mr/ms \(personName) is \(newPct * newAmount)")
    }

}


//Create a class GSTCalculator that inherits/subclass of TaxCalculator
    class GSTCalculator : TaxCalculator {

        //This class will have the mapping of country code and the taxPct
        //E.g: MY -> 0.06. sg: 0.07, BN: 0.11, VN: 0.09

    var countryDict : [String : Double] = ["MY": 0.06, "SG": 0.07, "BN": 0.11, "VN": 0.09]
    
        //Create the initializer of the new class
  
        init (total:Double, countryName: String) {
            
           //self.total = total
           //self.taxPct = countryDict[countryName]!
           //self.taxAmount = total * countryDict[countryName]!
            
            //Another way to map new parameter with existing value
            super.init(taxPct: countryDict[countryName]!, total: total)
            
            
        }
    
    //Create a function printTaxAmount that is specifically for GSTCalculator
    //The function will simply do "The GST Amount is 6"
       
        //func printTaxAmount() {
        //Since function printTaxAmount has already been used at top, so we need to override the general function naming
        
        override func printTaxAmount() {
            print("The GST amount is \(taxAmount)")
        }
    
}

//An instance of a class is called object
//A class- Template/Blueprint of an object in OOP
//Create the instance GST calculator and Tax Calculator
//Call all the methods..

    var a = GSTCalculator(total: 100, countryName: "MY")
    a.printTaxAmount()

    var b = TaxCalculator(taxPct: 0.12, total: 150)
    b.printTaxAmount()
    b.calculateTaxForNewPct(newPct: 0.077)
    b.calculateTaxForNewPctAndAmount(newPct: 0.08, newAmount: 100)

    b.calculateTaxAndAmountFor(newPct: 0.12, newAmount: 150, personName: "Evonne")


    //do not need to declare the parameter again and again if and only if underscore "_" has been used in declaration fuction
    //e.g : func calculateTaxForNewPct ("_" newPct: Double) -> Double {
    //e.g : func calculateTaxForNewPctAndAmount(_ newPct: Double, _ newAmount: Double) -> Double {
    //e.g : func calculateTaxForNewPctAndAmount(_ newPct: Double, _ newAmount: Double) -> Double {
    //e.g : func calculateTaxAndAmountFor(_ newPct: Double, _ newAmount: Double, _ personName: String ) -> Void {

    //b.printTaxAmount()
    //b.calculateTaxForNewPct(0.077)
    //b.calculateTaxForNewPctAndAmount(0.08, 100)
    //b.calculateTaxAndAmountFor(0.12, 150, "Evonne")




//Objective C based

var myString = "Hello Wold"


