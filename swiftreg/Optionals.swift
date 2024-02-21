import Swift
 
// Creating a function with Optional Tuple Return Type
// This function will return nil when the given array is empty
func getMinMax(ESalary: [Int]) -> (minSalary: Int, maxSalary: Int)?{
 
    // If the given array is empty then return nil
    if ESalary.isEmpty
    {
        return nil
    }
     
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
     
    // Returning the minimum and maximum data
    // that we find from the ESalary array
    return(MinValue, MaxValue)
}
 
// Calling the function
//var updatedData = getMinMax(ESalary: [100,200,300])
//
//print("Given array 1: ", updatedData)
//var udNill = getMinMax(ESalary: [])
// print("Given array 2: ", udNill)
