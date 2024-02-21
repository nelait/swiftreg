
import Swift
  
// Printing hello world using closure
let greet1 = {
    print("Hello, world!")
}
  
//greet()
// Swift program to illustrate how to use the closure in a function
let multiply: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}
  
// Creating a function
func performCalculation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}
  
// Calling function
let result = performCalculation(a: 5, b: 7, operation: multiply)
  
// Displaying output
//print(result)

// Swift program to shorthand argument names in a function
  
// Function to print "Hello, Regions!"
func sayHello(to name: String)
{
    print("Hello, \(name)!")
}
  
//sayHello(to: "Regions")
