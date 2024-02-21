//
//  main.swift
//  swiftpractice
//
//  Created by Krishna kollepara on 2/20/24.
//


func greet()
{
    print("Hello World")
}
 
// Calling the function
//greet()
 
//print("Outside function")

/** Function with parameters*/

func addNumbers(num1: Int, num2: Int)
{
    let sum = num1 + num2
    print("Sum: ", sum)
}
 
// Calling function with two values
//addNumbers(num1: 6, num2: 4)

/** Function with parameters and return value*/

func circleArea(radius: Double) -> Double
{
   let pi = 3.14
   let formula = pi*radius*radius
    
   return formula
}
 
// Calling the function and passing parameter to the function
//let answer = circleArea(radius: 3.5)
//print("Area:", answer)

// Swift program to declare and call a function with argument label
 
// Function with argument label
func marvel(year: Int, spiderman movie: String)
{
   print("\(movie) was released in \(year)")
    
}
 
// Calling the function
//marvel(year: 2008, spiderman: "Iron man")

// Swift program to declare and call a function without argument label
 
// Declare function with arguments
func marvel(_ year: Int, ex IronMan: String)
{
 
   print("\(IronMan) was released in \(year)")
    
}
 
// Calling function with argument
//marvel(2008, ex: "3")

// Swift program to declare and call a function with default parameter value
 
// Declaring function with parameter
func demoFunction(x : Int, y : Int = 10)
{
    print("Parameter without Default Value = \(x)")
    print("Parameter with Default Value = \(y)")
}
 
// Calling function with default value
//demoFunction(x: 4)
 
// Calling function and change the default value
// of a parameter to a new one
//demoFunction(x: 4, y: 7)

func returnmeSome() -> String{
    return "Lets learn something new!!"
}
 
// Calling the function
let display = returnmeSome()
 
// Displaying the results
//print(display)

func calSalary(bonus: Int) -> Int{
    let empsalary = bonus + 20000
    return empsalary
}
 
// Calling the function
var updatedData = calSalary(bonus: 1000)
 
// Display the updated salary
//print("New salary: ", updatedData)

// Swift program to illustrate Function With
// a parameter and multiple return values
import Swift
 
// Creating a function with a parameter
// and multiple return values.
// This function is used to find the minimum
// and maximum salary of the employees
func getMinMaxSal(ESalary: [Int]) -> (minSalary: Int, maxSalary: Int){
 
    // Creating two variables that contains the
    // value of first integer in the array
    var MinValue = ESalary[0]
    var MaxValue = ESalary[0]
     
    // Iterate the array to find the minimum
    // and maximum value
    for newValue in ESalary[1..<ESalary.count]{
        if newValue < MinValue{
            MinValue = newValue
        }
        if newValue > MaxValue{
            MaxValue = newValue
        }
    }
     
    // Returning the minimum and maximum values
    // that we find from the array
    return(MinValue, MaxValue)
}
 
// Calling the function
var minMaxData = getMinMaxSal(ESalary: [23000, 15000, 450000, 50000, 12000])
 
// Display the minimum salary
//print("Minimum salary of the GEmployee: ", minMaxData.minSalary)
 
// Display the maximum salary
//print("Maximum salary of the GEmployee: ", minMaxData.maxSalary)


// Creating a function with multiple parameters
// and multiple return values.
func getSalDetails(EName: String, EAge: Int, ESalary: Int) -> (FullName: String, CurrentAge: Int, CurrentSalary: Int){
 
    // Updating old data
    let FullName = EName + " Singh"
    let NewAge = EAge + 1
    let NewSalary = ESalary + 2000
     
    // Returning multiple values
    return(FullName, NewAge, NewSalary)
}
 
// Calling the function
var ud = getSalDetails(EName: "Sumit", EAge: 23, ESalary: 23000)
 
// Display the full name
//print("Full name of the GEmployee: ", ud.FullName)
 
// Display the current age
//print("Current age of the GEmployee: ", ud.CurrentAge)
 
// Display the current salary
//print("Current salary of the GEmployee: ", ud.CurrentSalary)

// Creating a function with an Implicit Return Type.Always remember the implicit return value must return something. You are not allowed to use simply print
func implicitReturn(for EAuthor: String) -> Int{
//"Geek of the Month is " + EAuthor + " !!Congratulations!!"
    10
}
 
// Calling the function and displaying the final result
var output=implicitReturn(for: "Krishna")
//print(output)

// Creating a function with variadic and default parameter
// Here this function find the total marks of semester 1
// and name of the student
func StudentResult(_ marks:Int..., Sname: String){
 
    var sum = 0
     
    // Finding the sum of the given marks
    for i in marks{
        sum += i
    }
     
    // Displaying the name of the student and result
    print("Name of the student: ", Sname)
    print("Total marks of semester 1: ", sum)
}
 
// Calling function with a list of parameters
// that is variadic and default parameter
// Marks of all the subjects and name of the student
//StudentResult(23, 45, 66, 77, 88, 66, Sname: "Rohan")

// Using in-out parameters in myFunction.we have a function that accepts a number of parameters and we want to make changes in the values of those parameters
func myFunction(_ num1: inout Int, _ num2: inout Int)
{
  
    // Swapping num1 and num2
    // by using a third variable
      let temp = num1
      num1 = num2
    num2 = temp
}
  
// Initializing integers
var num1 = 10
var num2 = 20
  
// Before swapping
//print("Before swapping:")
//print("num1 is \(num1) and num2 is \(num2)")
  
//myFunction(&num1, &num2)
  
// After swapping
//print("\nAfter swapping:")
//print("num1 is \(num1) and num2 is \(num2)")

// Outer function having another function
// to print a string
func myFunction1()
{
  
    // Inner function having print statement
    func myFunction2()
    {
        print("Hello Regions")
    }
      
    // Calling inner function inside of
    // the outer function
    myFunction2()
}
  
// Driver code
  
// Calling outer function outside
// of the other function
//myFunction1()


//Function overloading
func printSum(value1: Int, value2: Int)
{
  
    // Calculating sum of value1 and value2
    let sum = value1 + value2
      
    // Print the sum
     print("The sum of", value1, "and",
           value2, "is equal to", sum)
}
  
// Function 2 to calculate sum
func printSum(value1: Int, value2: Int, value3: Int)
{
  
    // Calculating sum of value1 and value2
    let sum = value1 + value2 + value3
      
    // Print the sum
     print("The sum of", value1, ",",
           value2, "and", value3,
           "is equal to", sum)
      
}
  
// Function 3 to calculate sum
func printSum(value1: Int, value2: Int, value3: Int,
              value4: Int)
{
  
    // Calculating sum of value1 and value2
    let sum = value1 + value2 + value3 + value4
      
    // Print the sum
     print("The sum of", value1, ",",
           value2, ",", value3, "and",
           value4, "is equal to", sum)
}
  
// Calling printSum() function to calculate sum
//printSum(value1: 5, value2: 15)
  
// Calling printSum() function to calculate sum
//printSum(value1: 5, value2: 15, value3: 25)
  
// Calling printSum() function to calculate sum
//printSum(value1: 5, value2: 15, value3: 25, value4: 35)
