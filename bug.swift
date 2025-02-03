let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

//However, if the array is empty:

let emptyNumbers: [Int] = []

let emptySum = emptyNumbers.reduce(0, +) 

print(emptySum) //Output: 0

//The above code works fine, however, if we don't provide the initial value, then for an empty array it will crash with runtime error.

let anotherEmptyNumbers: [Int] = []

let anotherEmptySum = anotherEmptyNumbers.reduce(+) //This will crash with runtime error
